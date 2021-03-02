using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_Video : System.Web.UI.UserControl {

        private string urlVideo; /* Acá guardo la URL del video de YT ya formateada para ser usada en HTML */

        public string UrlVideo { get => urlVideo; set => urlVideo = value; }

        public void establecerCampos(Nota n) {
            UrlVideo = Nota.splitURL(n.Foto);
        }

        protected void Page_Load(object sender, EventArgs e) {

        }
    }
}