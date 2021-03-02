using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_Editor_Desplegable : System.Web.UI.UserControl
    {

        private Editor e = new Editor();
        private List<RedSocial> redes;
        private int contador = 0;

        public Editor E { get => e; set => e = value; }
        public List<RedSocial> Redes { get => redes; set => redes = value; }

        public void establecerCamposEditorDesplegable(Editor e, List<RedSocial> rs) {
            E = e;
            Redes = rs;
        }

        protected void Page_Load(object sender, EventArgs e) {
            /*NeoGutenberg.Controls.Ctrl_Nota_Desplegable notaDespl = (Ctrl_Nota_Desplegable)LoadControl("/Controls/Ctrl_Nota_Desplegable.ascx");
            notaDesplegable.Controls.Add(notaDespl);*/
            foreach (Nota n in Nota.seleccionarNotasPorEditor(E)) {
                contador++;
                if (contador < 4) {
                    NeoGutenberg.Controls.Ctrl_Nota_Desplegable notaDespl = (Ctrl_Nota_Desplegable)LoadControl("/Controls/Ctrl_Nota_Desplegable.ascx");
                    notaDespl.establecerCamposNotaDesplegable(n);
                    notaDesplegable.Controls.Add(notaDespl);
                }
            }
        }
    }
}