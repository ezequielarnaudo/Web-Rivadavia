using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NeoGutenberg.Controls;
using NegocioGutenberg;

namespace NeoGutenberg {
    public partial class NotasPorTag : System.Web.UI.Page {

        private int i = 0;
        private string nombreTagMay; // Nombre del TAG que se muestra en mayúscula arriba de todo en la página
        private long valorParam;
        public long notasPorPag = 8; // Cantidad de Notas que se muestran por página
        private long pagActual; // Número de la Paginación
        public int CantNotas = 0;


        public string NombreTagMay { get => nombreTagMay; set => nombreTagMay = value; }

        protected void Page_Load(object sender, EventArgs e) {

            if (Request["idTag"] == null) {
                Response.Redirect("Default.aspx");
            }
            valorParam = long.Parse(Request["idTag"]); // Obtengo el valor del parámetro de la URL y lo convierto
            if (Request["pag"] == null || Request["pag"] == "0") {
                Response.Redirect("NotasPorTag.aspx?idTag=" + valorParam + "&pag=1");
                pagActual = long.Parse(Request["pag"]);
            } else {
                pagActual = long.Parse(Request["pag"]);
            }

            List<long> idTags = new List<long>(); // Lista donde guardo los ID Tags para despué comparar con la URL
            foreach (Tag t in Tag.seleccionarTags()) {
                idTags.Add(t.Id);
            }

            // CABECERA
            NeoGutenberg.Controls.Ctrl_Cabecera cabecera = (Ctrl_Cabecera)LoadControl("/Controls/Ctrl_Cabecera.ascx");
            header.Controls.Add(cabecera);

            // BARRA NAVEGACIÓN
            NeoGutenberg.Controls.Ctrl_Barra navbar = (Ctrl_Barra)LoadControl("/Controls/Ctrl_Barra.ascx");
            barra.Controls.Add(navbar);

            // --------------------
            /* Paso el ID TAG dependiendo sobre que TAG se hace click en la barra de arriba
            y muestro NOTAS de acuerdo al TAG seleccionado */
            /* Pregunto si la Lista donde guardo los ID Tags contiene el número que recibo de la URL
             para poder dirigirlo a la página correspondiente o a una por Default */


            CantNotas = Nota.seleccionarUltimasNotasPorTagCount(int.Parse(valorParam.ToString()));

            if (idTags.Contains(valorParam)) {
                NombreTagMay = Tag.seleccionarTagsPorID(valorParam)[0].Nombre;

                foreach (Nota n in Nota.seleccionarUltimasNotasPorTagIndex(valorParam, pagActual, notasPorPag)) {
                    NeoGutenberg.Controls.Ctrl_NotaPorTag nota = (Ctrl_NotaPorTag)LoadControl("/Controls/Ctrl_NotaPorTag.ascx");
                    nota.establecerCampos(n);
                    notaTag.Controls.Add(nota);
                }
            } else {
                Response.Redirect("Default.aspx");
            }
            
            // --------------------

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