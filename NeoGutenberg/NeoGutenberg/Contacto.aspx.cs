using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NeoGutenberg.Controls;

namespace NeoGutenberg
{
    public partial class Contacto : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            // CABECERA
            NeoGutenberg.Controls.Ctrl_Cabecera cabecera = (Ctrl_Cabecera)LoadControl("/Controls/Ctrl_Cabecera.ascx");
            header.Controls.Add(cabecera);

            // BARRA
            NeoGutenberg.Controls.Ctrl_Barra navbar = (Ctrl_Barra)LoadControl("/Controls/Ctrl_Barra.ascx");
            barra.Controls.Add(navbar);

            // PIE PÁGINA
            NeoGutenberg.Controls.Ctrl_Pie pie = (Ctrl_Pie)LoadControl("/Controls/Ctrl_Pie.ascx");
            footer.Controls.Add(pie);

        }
    }
}