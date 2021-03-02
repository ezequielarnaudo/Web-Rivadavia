using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;

namespace NGApi.Controllers
{
    
    public class ImageController : ApiController
    {
        [HttpGet]
        public string Hi()
        {
            return "Hello There...";
        }

        public class Resp
        {
            public string url;
        }

        public class Imagefile 
        {
            public string name;
            public string fullurl;
        }

        private class FormItem
        {
            public FormItem() { }
            public string name { get; set; }
            public byte[] data { get; set; }
            public string fileName { get; set; }
            public string mediaType { get; set; }
            public string value { get { return Encoding.Default.GetString(data); } }
            public bool isAFileUpload { get { return !String.IsNullOrEmpty(fileName); } }
        }
        [HttpGet]
        public List<Imagefile> getImages() 
        {
            string directory = HttpContext.Current.Server.MapPath("/images");
            string[] files = Directory.GetFiles(directory);
            List<Imagefile> IF = new List<Imagefile>();
            if (files != null && files.Length > 0) 
            {

                foreach (string s in files) 
                {
                    FileInfo F = new FileInfo(s);
                    IF.Add(new Imagefile { fullurl = ("http://" + HttpContext.Current.Request.Url.Host + ":" + HttpContext.Current.Request.Url.Port.ToString() + "/images/" + F.Name), name=F.Name });
                    
                    
                }
            }
            return IF;

        }
       
        [HttpPost]
        public async Task<List<Resp>> PostPortada()
        {

           


            if (!Request.Content.IsMimeMultipartContent())
            {
                throw new HttpResponseException(HttpStatusCode.UnsupportedMediaType);
            }

            var provider = new MultipartMemoryStreamProvider();

            await Request.Content.ReadAsMultipartAsync(provider);

            var formItems = new List<FormItem>();

            // Scan the Multiple Parts 
            foreach (HttpContent contentPart in provider.Contents)
            {
                var formItem = new FormItem();
                var contentDisposition = contentPart.Headers.ContentDisposition;
                formItem.name = contentDisposition.Name.Trim('"');
                formItem.data = await contentPart.ReadAsByteArrayAsync();
                formItem.fileName = String.IsNullOrEmpty(contentDisposition.FileName) ? "" : contentDisposition.FileName.Trim('"');
                formItem.mediaType = contentPart.Headers.ContentType == null ? "" : String.IsNullOrEmpty(contentPart.Headers.ContentType.MediaType) ? "" : contentPart.Headers.ContentType.MediaType;
                formItems.Add(formItem);
            }
            List<Resp> r = new List<Resp>();

            // We now have a list of all the distinct items from the *form post*.
            // We can now decide to do something with the items.
            foreach (FormItem formItemToProcess in formItems)
            {
                string filename = Guid.NewGuid().ToString();
                if (formItemToProcess.mediaType.Contains("png")) filename = filename + ".png";
                if (formItemToProcess.mediaType.Contains("jpeg")) filename = filename + ".jpg";
                if (formItemToProcess.mediaType.Contains("jpg")) filename = filename + ".jpeg";
                File.WriteAllBytes(HttpContext.Current.Server.MapPath("/") + "\\portadas\\" + filename, formItemToProcess.data);
                r.Add(new Resp { url ="https://" + "mundoempresas.com.ar" + "/portadas/" + filename });
            }

            return r;
        }


        [HttpPost]
        /// <summary>
        /// An ApiController to access an AJAX form post.
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <returns></returns>
        public async Task<List<Resp>> Post()
        {

            if (!Request.Content.IsMimeMultipartContent())
            {
                throw new HttpResponseException(HttpStatusCode.UnsupportedMediaType);
            }

            var provider = new MultipartMemoryStreamProvider();

            await Request.Content.ReadAsMultipartAsync(provider);

            var formItems = new List<FormItem>();

            // Scan the Multiple Parts 
            foreach (HttpContent contentPart in provider.Contents)
            {
                var formItem = new FormItem();
                var contentDisposition = contentPart.Headers.ContentDisposition;
                formItem.name = contentDisposition.Name.Trim('"');
                formItem.data = await contentPart.ReadAsByteArrayAsync();
                formItem.fileName = String.IsNullOrEmpty(contentDisposition.FileName) ? "" : contentDisposition.FileName.Trim('"');
                formItem.mediaType = contentPart.Headers.ContentType == null ? "" : String.IsNullOrEmpty(contentPart.Headers.ContentType.MediaType) ? "" : contentPart.Headers.ContentType.MediaType;
                formItems.Add(formItem);
            }
            List<Resp> r = new List<Resp>();

            // We now have a list of all the distinct items from the *form post*.
            // We can now decide to do something with the items.
            foreach (FormItem formItemToProcess in formItems)
            {
                string filename = Guid.NewGuid().ToString();
                if (formItemToProcess.mediaType.Contains("png")) filename = filename + ".png";
                if (formItemToProcess.mediaType.Contains("jpeg")) filename = filename + ".jpg";
                if (formItemToProcess.mediaType.Contains("jpg")) filename = filename + ".jpeg";
                File.WriteAllBytes(HttpContext.Current.Server.MapPath("/") + "\\images\\" + filename,formItemToProcess.data);
                r.Add(new Resp { url = Request.RequestUri.Host+"/images/" + filename });
            }

            return r;
        }


    }
}