using HtmlAgilityPack;
using NegocioGutenberg;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace NGBackOffice
{
    public partial class Editor : System.Web.UI.Page
    {

        public string hostapi = ConfigurationManager.AppSettings["urlWEBAPI"];

        protected void Page_Load(object sender, EventArgs e)
        {


            
            if (Request["e"] != null)
            {
                int IdNota = int.Parse(Request["e"]);
                
                
                List<Nota> ListaNotas = Nota.seleccionarNotasPorID(IdNota);
                if (ListaNotas.Count > 0) 
                {
                    if (Session["nota"] != null) 
                    {
                        Session.Remove("nota");
                    }
                    
                    Nota nota = ListaNotas[0];
                    Session.Add("nota", nota);
                    hIdNota.Value = nota.Id.ToString();
                    hfechaPublicacion.Value = nota.FechaPublicacion.ToString("dd/MM/yy");
                    hhoraPublicacion.Value = nota.FechaPublicacion.Hour.ToString("00") + ":" + nota.FechaPublicacion.Minute.ToString("00");
                    hfotoPortada.Value = nota.Foto;
                    hidAutor.Value = nota.IdEditor.Id.ToString();
                    hvolantaPortada.Value = nota.DescripcionFoto;
                    if (ListaNotas[0].TextoCompleto != "")
                    {

                        HtmlDocument X = new HtmlDocument();
                        X.LoadHtml(nota.TextoCompleto);
                        HtmlNodeCollection idNotaNode = X.DocumentNode.SelectNodes("/neotext/idnota");
                        X.DocumentNode.ChildNodes[0].RemoveChild(idNotaNode[0]);
                        string subfinalxml = X.DocumentNode.InnerHtml;
                        subfinalxml.Replace("<NEOTEXT>", "").Replace("</NEOTEXT>", "");

                        ctrlEditor.InnerHtml = subfinalxml;
                    }
                    else 
                    {
                        ctrlEditor.InnerHtml = "<h1>" + nota.Titulo + "</h1>";
                    }
                }
            }

        }

       
    }
}