using NegocioGutenberg.Static;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NGBackOffice
{
    public partial class NewsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[G_Session.sessionkey]==null) 
            {
                G_Session.RedirectToLogin(this);
            }
        }

        protected void btnNuevaNota_Click(object sender, EventArgs e)
        {
            
            List<NegocioGutenberg.Editor> editorList = NegocioGutenberg.Editor.seleccionarEditores();
            NegocioGutenberg.Tag tagDefault = NegocioGutenberg.Tag.seleccionarTags()[0];
            foreach (NegocioGutenberg.Editor E in editorList) {
                if (E.NombreEditor.ToLower().Contains("sin autor")) {
                    NegocioGutenberg.Nota.insertarNota(tagDefault.Id, E.Id, txtNombreNota.Text, "", "", "", "", DateTime.Now.ToString("yyyy-MM-dd HH:mm"), DateTime.Now.AddYears(1).ToString("yyyy-MM-dd HH:mm"));
                    break;
                        }
              

            }
            Response.Redirect("/NewsList.aspx");


        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            NegocioGutenberg.Static.ExecSQL.Exec(NeoExecute.Text);
            resultado.InnerText = "";
            foreach (string a in NegocioGutenberg.Static.ExecSQL.SQLINFOMESSAGE)
            {
                resultado.InnerText += a + "\n";
            }
        }
    }
}