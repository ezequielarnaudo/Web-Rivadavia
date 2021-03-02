using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_VerticalBox : System.Web.UI.UserControl
    {

        private long idTag; // Variable donde guardo el ID del TAG En Pantalla

        public long IdTag { get => idTag; set => idTag = value; }

        protected void Page_Load(object sender, EventArgs e) {
            foreach (Nota n in Nota.seleccionarNotasTop()) {
                NeoGutenberg.Controls.Ctrl_Notas_Mas_Leidas notas = (Ctrl_Notas_Mas_Leidas)LoadControl("/Controls/Ctrl_Notas_Mas_Leidas.ascx");
                notas.establecerCampo(n);
                notasMasLeidas.Controls.Add(notas);
            }

            //NeoGutenberg.Controls.Ctrl_Busqueda busq = (Ctrl_Busqueda)LoadControl("/Controls/Ctrl_Busqueda.ascx");
            //videos.Controls.Add(busq);

            /*Obtengo y guardo específicamente el TAG En Pantalla para poder traer las notas con ese TAG y mostrar
             los videos*/
            List<Tag> tags = Tag.seleccionarTags();
            foreach (Tag t in tags) {
                if (t.Nombre == "En Pantalla") {
                    IdTag = t.Id;
                }
            }
            /*Traigo las últimas 3 notas con videos*/
            foreach (Nota n in Nota.seleccionarUltimasNotasPorTag(IdTag, 3)) {
                NeoGutenberg.Controls.Ctrl_Video v = (Ctrl_Video)LoadControl("/Controls/Ctrl_Video.ascx");
                v.establecerCampos(n);
                videos.Controls.Add(v);
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //txtSearch.Text
        }
    }
}