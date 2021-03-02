using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_Nota_Desplegable : System.Web.UI.UserControl {

        private Nota n = new Nota();
        private string nombreTag;
        private string nombreEditor;
        private string fechaPublicacionConv;

        public Nota N { get => n; set => n = value; }
        public string NombreTag { get => nombreTag; set => nombreTag = value; }
        public string NombreEditor { get => nombreEditor; set => nombreEditor = value; }
        public string FechaPublicacionConv { get => fechaPublicacionConv; set => fechaPublicacionConv = value; }

        public void establecerCamposNotaDesplegable(Nota n) {
            N = n;
            NombreTag = n.IdTag.Nombre;
            NombreEditor = n.IdEditor.NombreEditor;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}