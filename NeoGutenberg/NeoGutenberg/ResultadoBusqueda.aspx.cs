using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;
using NeoGutenberg.Controls;

namespace NeoGutenberg
{
    public partial class ResultadoBusqueda : System.Web.UI.Page {

        private string txtBusq; // Texto buscado
        public long notasPorPag = 15; // Número de Notas que se muestran por página
        private long pagActual; // Número paginación actual

        protected void Page_Load(object sender, EventArgs e) {

            if (Request["q"] == "" || Request["q"] == null) {
                Response.Redirect("Default.aspx");
            }
            txtBusq = Request["q"];
            //cantidadNotas = Nota.buscardorNotas(txtBusq).Count; // Obtengo cantidad de Notas
            /*Si no se pasa parámetro Paginación se le asigna 1 y se guarda.
             Si no, se guarda el número de Paginación actual*/
            if (Request["pag"] == null || Request["pag"] == "0") {
                Response.Redirect("ResultadoBusqueda.aspx?q=" + txtBusq + "&pag=1");
                pagActual = long.Parse(Request["pag"]);
            } else {
                pagActual = long.Parse(Request["pag"]);
            }

            

            NeoGutenberg.Controls.Ctrl_Cabecera cabecera = (Ctrl_Cabecera)LoadControl("/Controls/Ctrl_Cabecera.ascx");
            header.Controls.Add(cabecera);

            NeoGutenberg.Controls.Ctrl_Barra navbar = (Ctrl_Barra)LoadControl("/Controls/Ctrl_Barra.ascx");
            barra.Controls.Add(navbar);

            /* CREAR FOREACH DONDE RECORRA TODAS LAS NOTAS QUE TRAEMOS DEL MÉTODO BUSCADOR NOTAS Y PASAR
             PARÁMETRO STRING DE LA BÚSQUEDA. SE IGNORAN LAS NOTAS CON VIDEOS (TAG 14) */

            foreach (Nota n in Nota.buscarNotasIndex(txtBusq, pagActual, notasPorPag, 14)) {
                NeoGutenberg.Controls.Ctrl_NotaBusqueda nota = (Ctrl_NotaBusqueda)LoadControl("/Controls/Ctrl_NotaBusqueda.ascx");
                nota.establecerCampos(n);
                notaBusqueda.Controls.Add(nota);
            }

            /*foreach (Nota n in Nota.buscardorNotas(txtBusq)) {
                NeoGutenberg.Controls.Ctrl_NotaBusqueda notas = (Ctrl_NotaBusqueda)LoadControl("/Controls/Ctrl_NotaBusqueda.ascx");
                notas.establecerCampos(n);
                notaBusqueda.Controls.Add(notas);
            }*/

            NeoGutenberg.Controls.Ctrl_Pie pie = (Ctrl_Pie)LoadControl("/Controls/Ctrl_Pie.ascx");
            footer.Controls.Add(pie);

        }
    }
}