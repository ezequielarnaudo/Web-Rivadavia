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
    public partial class Nota_Autor_Gral : System.Web.UI.Page {

        private static string url;
        private static string titulo;
        private static string subtitulo;
        private static string imagen;

        public static string Url { get => url; set => url = value; }
        public static string Titulo { get => titulo; set => titulo = value; }
        public static string Subtitulo { get => subtitulo; set => subtitulo = value; }
        public static string Imagen { get => imagen; set => imagen = value; }

        protected void Page_Load(object sender, EventArgs e) {

            // CABECERA
            NeoGutenberg.Controls.Ctrl_Cabecera cabecera = (Ctrl_Cabecera)LoadControl("/Controls/Ctrl_Cabecera.ascx");
            header.Controls.Add(cabecera);

            // BARRA NAVEGACIÓN
            NeoGutenberg.Controls.Ctrl_Barra navbar = (Ctrl_Barra)LoadControl("/Controls/Ctrl_Barra.ascx");
            barra.Controls.Add(navbar);

            // NOTA COMPLETA
            long valorParam = long.Parse(Request["idNota"]);
            //long valorParam = long.Parse(Session["idNota"].ToString());
            foreach (Nota n in Nota.seleccionarNotasPorID(valorParam)) {
                NeoGutenberg.Controls.Ctrl_NotaCompleta notaComp = (Ctrl_NotaCompleta)LoadControl("/Controls/Ctrl_NotaCompleta.ascx");
                notaComp.establecerCampos(n);
                notaCompleta.Controls.Add(notaComp);
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

        public static void obtenerNotaParaRedes(string url, string titulo, string sub, string imagen) {
            Url = url;
            Titulo = titulo;
            Subtitulo = sub;
            Imagen = imagen;
        }

    }
}