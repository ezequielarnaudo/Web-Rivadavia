using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
using NegocioGutenberg;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_Nota : System.Web.UI.UserControl
    {

        private Nota n = new Nota();
        private string nombreTag;
        private string nombreEditor;
        private string fechaPublicacionConv;

        public Nota N { get => n; set => n = value; }
        public string NombreTag { get => nombreTag; set => nombreTag = value; }
        public string NombreEditor { get => nombreEditor; set => nombreEditor = value; }
        public string FechaPublicacionConv { get => fechaPublicacionConv; set => fechaPublicacionConv = value; }

        public void establecerCampos(Nota n) {
            try
            {
                HtmlDocument D = new HtmlDocument();
                D.LoadHtml(n.TextoCompleto);
                D.DocumentNode.SelectNodes("neotext/h1")[0].InnerHtml = "";
                string textoSinCabecera = D.DocumentNode.InnerHtml;
                N.Id = n.Id;
                NombreTag = n.IdTag.Nombre;
                NombreEditor = n.IdEditor.NombreEditor;
                N.Titulo = n.Titulo;
                N.Subtitulo = n.Subtitulo;
                N.Foto = n.Foto;
                N.DescripcionFoto = n.DescripcionFoto;
                N.TextoCompleto = textoSinCabecera;
                N.FechaGuardado = n.FechaGuardado;
                FechaPublicacionConv = n.FechaPublicacion.ToString("dd/MM/yyyy");
                //idNota.Value = (N.Id).ToString();
                //Session["idNota"] = idNota.Value;
            }
            catch (Exception e) 
            {
                
            }


        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}