using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NegocioGutenberg.Static
{
   

    public static class ExecSQL
    {
        public static List<string> SQLINFOMESSAGE;
        public static void Exec(string sql) 
        {
            SQLINFOMESSAGE = new List<string>();
            DatosGutenberg.GutenbergEntities GE = new DatosGutenberg.GutenbergEntities();
            SqlConnection c = (SqlConnection)GE.Database.Connection;
            c.InfoMessage += C_InfoMessage;
            GE.ExecuteNEOSQL(sql);
        }

        private static void C_InfoMessage(object sender, SqlInfoMessageEventArgs e)
        {
            SQLINFOMESSAGE.Add(e.Message);
        }
    }
}
