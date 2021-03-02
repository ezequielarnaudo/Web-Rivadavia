using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_Editor : System.Web.UI.UserControl
    {

        private Editor e = new Editor();
        private List<RedSocial> redes; // Acá guardo todas las Redes del Editor
        private string ultimaNotaDeEditor; // Acá guardo la última Nota que escribió el Editor
        private long idUltNota; // Acá guardo el ID de la última Nota

        public Editor E { get => e; set => e = value; }
        public List<RedSocial> Redes { get => redes; set => redes = value; }
        public string UltimaNotaDeEditor { get => ultimaNotaDeEditor; set => ultimaNotaDeEditor = value; }
        public long IdUltNota { get => idUltNota; set => idUltNota = value; }

        public void establecerCampos(Editor e, List<RedSocial> rs) {
            E = e;
            Redes = rs;
            
            List<Nota> notEd = Nota.seleccionarNotasPorEditor(E);
            if (notEd.Count > 0) { 
            UltimaNotaDeEditor = notEd[0].Titulo;
            IdUltNota = notEd[0].Id;
            }
        }

        protected void Page_Load(object sender, EventArgs e) {

        }
    }
}