using NeoGutenberg.Controls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using NegocioGutenberg;

namespace NeoGutenberg
{
    public partial class Default : System.Web.UI.Page
    {

        private int i = 0;

        protected void Page_Load(object sender, EventArgs e) {

            // CABECERA
            NeoGutenberg.Controls.Ctrl_Cabecera cabecera = (Ctrl_Cabecera)LoadControl("/Controls/Ctrl_Cabecera.ascx");
            header.Controls.Add(cabecera);

            // BARRA
            NeoGutenberg.Controls.Ctrl_Barra navbar = (Ctrl_Barra)LoadControl("/Controls/Ctrl_Barra.ascx");
            barra.Controls.Add(navbar);

            // NOTAS PRINCIPALES, PRIMERAS EN APARECER
            foreach (Nota n in Nota.seleccionarUltimasNotas(3)) {
                NeoGutenberg.Controls.Ctrl_Nota nota = (Ctrl_Nota)LoadControl("/Controls/Ctrl_Nota.ascx");
                nota.establecerCampos(n);
                notasPrincipales.Controls.Add(nota);
            }

            // NOTAS MÁS CHICAS
            foreach (Nota n in Nota.seleccionarUltimasNotas(5)) {
                i++;
                NeoGutenberg.Controls.Ctrl_NotaChica notaChica = (Ctrl_NotaChica)LoadControl("/Controls/Ctrl_NotaChica.ascx");
                if (i > 3) {
                    notaChica.establecerCampos(n);
                    notasMedio1.Controls.Add(notaChica);
                    if (i == 5) {
                        i = 0;
                    }
                }
            }

            foreach (Nota n in Nota.seleccionarUltimasNotas(7)) {
                i++;
                NeoGutenberg.Controls.Ctrl_NotaChica notaChica = (Ctrl_NotaChica)LoadControl("/Controls/Ctrl_NotaChica.ascx");
                if (i > 5) {
                    notaChica.establecerCampos(n);
                    notasMedio2.Controls.Add(notaChica);
                    if (i == 7) {
                        i = 0;
                    }
                }
            }

            foreach (Nota n in Nota.seleccionarUltimasNotas(9)) {
                i++;
                NeoGutenberg.Controls.Ctrl_NotaChica notaChica = (Ctrl_NotaChica)LoadControl("/Controls/Ctrl_NotaChica.ascx");
                if (i > 7) {
                    notaChica.establecerCampos(n);
                    notasMedio3.Controls.Add(notaChica);
                    if (i == 9) {
                        i = 0;
                    }
                }
            }

            foreach (Nota n in Nota.seleccionarUltimasNotas(10)) {
                i++;
                NeoGutenberg.Controls.Ctrl_NotaChica notaChica = (Ctrl_NotaChica)LoadControl("/Controls/Ctrl_NotaChica.ascx");
                if (i == 10) {
                    notaChica.establecerCampos(n);
                    notasMedio4.Controls.Add(notaChica);
                    i = 0;
                }
            }

            // NOTA GRANDE
            /*foreach (Nota n in Nota.seleccionarUltimasNotas(7)) {
                i++;
                NeoGutenberg.Controls.Ctrl_NotaGrande notaG = (Ctrl_NotaGrande)LoadControl("/Controls/Ctrl_NotaGrande.ascx");
                if (i == 7) {
                    notaG.establecerCamposNotaGrande(n);
                    notaGrande.Controls.Add(notaG);
                    i = 0;
                }
            }*/

            // VERTICAL BOX A LA DERECHA
            NeoGutenberg.Controls.Ctrl_VerticalBox vb = (Ctrl_VerticalBox)LoadControl("/Controls/Ctrl_VerticalBox.ascx");
            verticalBox.Controls.Add(vb);

            // NOTA ABAJO
            foreach (Nota n in Nota.seleccionarUltimasNotas(13)) {
                i++;
                NeoGutenberg.Controls.Ctrl_Nota nota = (Ctrl_Nota)LoadControl("/Controls/Ctrl_Nota.ascx");
                if (i > 10) {
                    nota.establecerCampos(n);
                    notasFinal.Controls.Add(nota);
                    if (i == 13) {
                        i = 0;
                    }
                }
            }

            foreach (Nota n in Nota.seleccionarUltimasNotas(16)) {
                i++;
                NeoGutenberg.Controls.Ctrl_Nota nota = (Ctrl_Nota)LoadControl("/Controls/Ctrl_Nota.ascx");
                if (i > 13) {
                    nota.establecerCampos(n);
                    notasFinal2.Controls.Add(nota);
                    if (i == 16) {
                        i = 0;
                    }
                }
            }

            // INFO EDITORES
            foreach (Editor ed in Editor.seleccionarEditores()) {
                NeoGutenberg.Controls.Ctrl_Editor editor = (Ctrl_Editor)LoadControl("/Controls/Ctrl_Editor.ascx");
                List<RedSocial> rs = RedSocial.seleccionarRedSocialPorEditor(ed);
                editor.establecerCampos(ed, rs);
                editores.Controls.Add(editor);
            }

            // PIE PÁGINA
            NeoGutenberg.Controls.Ctrl_Pie pie = (Ctrl_Pie)LoadControl("/Controls/Ctrl_Pie.ascx");
            footer.Controls.Add(pie);

        }
    }
}