using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;

namespace NeoGutenberg.Controls
{

    public partial class Ctrl_Busqueda : System.Web.UI.UserControl {

        private string txtBusqueda;

        public string TxtBusqueda { get => txtBusqueda; set => txtBusqueda = value; }

        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btnSearch_Click(object sender, EventArgs e) {
            TxtBusqueda = txtSearch.Text;
            Response.Redirect("ResultadoBusqueda.aspx?q=" + TxtBusqueda);
        }
    }

}