using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;
using System.Data;
using HtmlAgilityPack;
using System.Globalization;
using System.Web.UI.HtmlControls;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_NotaCompleta : System.Web.UI.UserControl {

        private Nota n = new Nota();
        private string nombreTag;
        private string nombreEditor;
        private string fechaPublicacionConv;
        private long idTag;
        private string url;

        public Nota N { get => n; set => n = value; }
        public string NombreTag { get => nombreTag; set => nombreTag = value; }
        public string NombreEditor { get => nombreEditor; set => nombreEditor = value; }
        public string FechaPublicacionConv { get => fechaPublicacionConv; set => fechaPublicacionConv = value; }
        public long IdTag { get => idTag; set => idTag = value; }
        public string Url { get => url; set => url = value; }

        public void establecerCampos(Nota n) {
            HtmlDocument D = new HtmlDocument();
            D.LoadHtml(n.TextoCompleto);
            D.DocumentNode.SelectNodes("neotext/h1")[0].InnerHtml = "";
            string textoSinCabecera = D.DocumentNode.InnerHtml;
            N.DescripcionFoto = n.DescripcionFoto;
            N.FechaGuardado = n.FechaGuardado;
            N.Foto = n.Foto;
            N.Id = n.Id;
            N.OrdenNota = n.OrdenNota;
            N.Subtitulo = n.Subtitulo;
            N.Titulo = n.Titulo;
            N.TextoCompleto = textoSinCabecera;
            /*HtmlGenericControl foto = new HtmlGenericControl("meta");
            foto.Attributes.Add()
            Page.Header.Controls.Add(foto);*/
            NombreTag = n.IdTag.Nombre;
            NombreEditor = n.IdEditor.NombreEditor;
            IdTag = n.IdTag.Id;
            FechaPublicacionConv = n.FechaPublicacion.ToString("dd 'de' MMMM 'de' yyyy", new CultureInfo("es-ES"));
            NeoGutenberg.Nota_Autor_Gral.obtenerNotaParaRedes(Url, N.Titulo, N.Subtitulo, N.Foto);
        }

        protected void Page_Load(object sender, EventArgs e) {

            /* Obtengo el ID Nota desde la URL y lo paso al método que actualiza el contador */
            long valorParam = long.Parse(Request["idNota"]);
            //long valorParam = long.Parse(Session["idNota"].ToString());
            Nota.updateContadorNota(valorParam);
            Url = HttpContext.Current.Request.Url.AbsoluteUri;
        }
    }
}