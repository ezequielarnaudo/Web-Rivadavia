using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_Cabecera : System.Web.UI.UserControl {

        private string fechaActual;

        public string FechaActual { get => fechaActual; set => fechaActual = value; }

        protected void Page_Load(object sender, EventArgs e) {
            FechaActual = DateTime.Today.ToString("dd-MM-yyyy");
        }
    }
}