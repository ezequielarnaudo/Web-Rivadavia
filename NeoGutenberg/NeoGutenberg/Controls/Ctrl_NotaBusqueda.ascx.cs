using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_NotaBusqueda : System.Web.UI.UserControl {

        private Nota n = new Nota();
        private string nombreTag;
        private string nombreEditor;
        private string fechaPublicacionConv;

        public Nota N { get => n; set => n = value; }
        public string NombreTag { get => nombreTag; set => nombreTag = value; }
        public string NombreEditor { get => nombreEditor; set => nombreEditor = value; }
        public string FechaPublicacionConv { get => fechaPublicacionConv; set => fechaPublicacionConv = value; }

        public void establecerCampos(Nota n) {
            N.Id = n.Id;
            //NombreTag = n.IdTag.Nombre;
            NombreEditor = n.IdEditor.NombreEditor;
            N.Titulo = n.Titulo;
            N.Subtitulo = n.Subtitulo;
            N.Foto = n.Foto;
            N.DescripcionFoto = n.DescripcionFoto;
            N.TextoCompleto = n.TextoCompleto;
            N.FechaGuardado = n.FechaGuardado;
            N.FechaPublicacion = n.FechaPublicacion;
            FechaPublicacionConv = n.FechaPublicacion.ToString("dd/MM/yyyy");
        }

        protected void Page_Load(object sender, EventArgs e) {

        }
    }
}