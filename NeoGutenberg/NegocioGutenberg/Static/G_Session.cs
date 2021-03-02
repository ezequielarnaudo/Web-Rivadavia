using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace NegocioGutenberg.Static
{
    public static class G_Session
    {
        public static string sessionkey = "sessionkey";


        public static void RedirectToLogin(System.Web.UI.Page P) 
        {
            P.Response.Redirect("/Default.aspx");
        }
        public static void RedirectToNewsList(System.Web.UI.Page P) 
        {
            P.Response.Redirect("/NewsList.aspx");
        }

    }
}
