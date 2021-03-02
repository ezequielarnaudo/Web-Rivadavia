using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_NotaChica : System.Web.UI.UserControl
    {

        private Nota n = new Nota();
        private string nombreTag;
        private string nombreEditor;
        private string fechaPublicacionConv;

        public Nota N { get => n; set => n = value; }
        public string FechaPublicacionConv { get => fechaPublicacionConv; set => fechaPublicacionConv = value; }
        public string NombreTag { get => nombreTag; set => nombreTag = value; }
        public string NombreEditor { get => nombreEditor; set => nombreEditor = value; }

        public void establecerCampos(Nota n) {
            N = n;
            NombreTag = n.IdTag.Nombre;
            NombreEditor = n.IdEditor.NombreEditor;
            FechaPublicacionConv = n.FechaPublicacion.ToString("dd/MM/yyyy");
        }

        protected void Page_Load(object sender, EventArgs e) {
            
        }
    }
}