using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Xml;

namespace NGApi.Controllers
{
    
    [EnableCors("*","*","*")]
    public class NotaController : ApiController
    {
        

        [HttpGet]
        public string Hi()
        {
            return "Hello There...";
        }
        [HttpPost]
        public string SaveNote()
        {

            try
            {
                Task<string> T = Request.Content.ReadAsStringAsync();
                T.Wait();
                HtmlDocument doc = new HtmlDocument();
                
                doc.LoadHtml("<NEOTEXT>" + T.Result + "</NEOTEXT>");


                System.IO.File.WriteAllText(HttpContext.Current.Server.MapPath("/") + "REC" + DateTime.Now.ToString("yyyyMMddHHmmss") + ".txt", T.Result);
                System.IO.File.WriteAllText(HttpContext.Current.Server.MapPath("/") + "PAR" + DateTime.Now.ToString("yyyyMMddHHmmss") + ".txt", doc.DocumentNode.InnerHtml);

                HtmlNodeCollection xmlIDnota = doc.DocumentNode.SelectNodes("neotext/idnota");
                HtmlNodeCollection xmlfechap = doc.DocumentNode.SelectNodes("neotext/fechap");
                HtmlNodeCollection xmltimep = doc.DocumentNode.SelectNodes("neotext/timep");
                HtmlNodeCollection xmlimgpor = doc.DocumentNode.SelectNodes("neotext/imgpor");
                HtmlNodeCollection xmlvolante = doc.DocumentNode.SelectNodes("neotext/volpor");
                HtmlNodeCollection xmlsubt = doc.DocumentNode.SelectNodes("neotext/subt");
                HtmlNodeCollection xmltag = doc.DocumentNode.SelectNodes("neotext/tag");
                HtmlNodeCollection xmlautor = doc.DocumentNode.SelectNodes("neotext/autor");
                HtmlNodeCollection xmlHeader = doc.DocumentNode.SelectNodes("neotext/h1");



                int idNota = int.Parse(xmlIDnota[0].InnerText);
                int idTag = int.Parse(xmltag[0].InnerText);
                int idEditor = int.Parse(xmlautor[0].InnerText);
                string subtitulo = xmlsubt[0].InnerText;
                string urlfoto = xmlimgpor[0].InnerText;
                string volante = xmlvolante[0].InnerText;
                string fechaGuardado = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                string fechaPublicacion = DateTime.ParseExact(xmlfechap[0].InnerText + " " + xmltimep[0].InnerText, "dd/MM/yyyy HH:mm",null).ToString("yyyy-MM-dd HH:mm:ss");
                
                xmlIDnota[0].InnerHtml = "";
                xmlfechap[0].InnerHtml = "";
                xmltimep[0].InnerHtml = "";
                xmlimgpor[0].InnerHtml = "";
                xmlvolante[0].InnerHtml = "";
                xmlsubt[0].InnerHtml = "";
                xmltag[0].InnerHtml = "";
                xmlautor[0].InnerHtml = "";
                string Header = xmlHeader[0].InnerText;
                NegocioGutenberg.Nota.UpdateNota(idNota, idTag,idEditor, Header, subtitulo, urlfoto, volante,doc.DocumentNode.InnerHtml, fechaGuardado, fechaPublicacion);
               /* HttpContext.Current.Response.Headers.Add("Access-Control-Allow-Origin", "*");
                HttpContext.Current.Response.Headers.Add("Access-Control-Allow-Methods", "GET,POST,PATCH,DELETE,PUT,OPTIONS");
                HttpContext.Current.Response.Headers.Add("Access-Control-Allow-Headers", "Origin, Content-Type, X-Auth-Token, content-type");*/
                return T.Result;
            }
            catch (Exception e) 
            {
                return e.Message + "\n" + e.StackTrace;
                
            }


        }
    }
}
