using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NeoGutenberg.Controls;
using NegocioGutenberg;

namespace NeoGutenberg
{
    public partial class LosQueSaben : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e) {

            // CABECERA
            NeoGutenberg.Controls.Ctrl_Cabecera cabecera = (Ctrl_Cabecera)LoadControl("/Controls/Ctrl_Cabecera.ascx");
            header.Controls.Add(cabecera);

            // BARRA NAVEGACIÓN
            NeoGutenberg.Controls.Ctrl_Barra navbar = (Ctrl_Barra)LoadControl("/Controls/Ctrl_Barra.ascx");
            barra.Controls.Add(navbar);

            // INFO EDITORES
            foreach (Editor ed in Editor.seleccionarEditores()) {
                NeoGutenberg.Controls.Ctrl_Editor_Desplegable editorDespl = (Ctrl_Editor_Desplegable)LoadControl("/Controls/Ctrl_Editor_Desplegable.ascx");
                List<RedSocial> rs = RedSocial.seleccionarRedSocialPorEditor(ed);
                editorDespl.establecerCamposEditorDesplegable(ed, rs);
                editoresDesplegables.Controls.Add(editorDespl);
                /*foreach (Nota n in Nota.seleccionarNotasPorEditor(ed) { 
                    // AGREGAR CONTROL PARA NOTA DESPLEGABLE EN EDITOR
                }*/
            }

            // BUSCADOR
            NeoGutenberg.Controls.Ctrl_Busqueda busq = (Ctrl_Busqueda)LoadControl("/Controls/Ctrl_Busqueda.ascx");
            buscador.Controls.Add(busq);

            // NOTAS MÁS LEÍDAS
            foreach (Nota n in Nota.seleccionarNotasTop()) {
                NeoGutenberg.Controls.Ctrl_Notas_Mas_Leidas notas = (Ctrl_Notas_Mas_Leidas)LoadControl("/Controls/Ctrl_Notas_Mas_Leidas.ascx");
                notas.establecerCampo(n);
                notasMasLeidas.Controls.Add(notas);
            }

            // PIE
            NeoGutenberg.Controls.Ctrl_Pie pie = (Ctrl_Pie)LoadControl("/Controls/Ctrl_Pie.ascx");
            footer.Controls.Add(pie);

        }
    }
}