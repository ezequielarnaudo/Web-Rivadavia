using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_Notas_Mas_Leidas : System.Web.UI.UserControl
    {

        private Nota n = new Nota();

        public Nota N { get => n; set => n = value; }

        public void establecerCampo(Nota n) {
            N.Id = n.Id;
            N.Titulo = n.Titulo;
            N.OrdenNota = n.OrdenNota;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}