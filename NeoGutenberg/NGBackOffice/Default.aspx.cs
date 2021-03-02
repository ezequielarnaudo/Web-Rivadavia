using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NegocioGutenberg.Static;

namespace NGBackOffice
{
    public partial class Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[G_Session.sessionkey] != null) 
            {
                G_Session.RedirectToNewsList(this);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsPostBack) 
            {
                if (txtUser.Text.ToLower() == "dstupenengo" && txtpass.Text.ToLower() == "hakuna479") 
                {
                    Session.Add(G_Session.sessionkey, true);
                    G_Session.RedirectToNewsList(this);
                }
            }
        }
    }
}