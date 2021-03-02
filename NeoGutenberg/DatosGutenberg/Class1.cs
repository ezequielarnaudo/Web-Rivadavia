using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/* Namespace que nos permite trabajar con SQL de la librería ADO.NET. Contiene todas las clases necesarias para conectar
 a un server SQL y leer, escribir, actualizar, etc. */
using System.Data.SqlClient;
using System.Data;

namespace DatosGutenberg
{
    public class Class1 {

        // NO LO USO PARA QUE YA TENGO EL MAPEODATOS.EDMX
        /*public static DataTable ConexionBD() {
            using (SqlConnection conn = new SqlConnection()) {
                // CONEXIÓN A INSTANCIA SQL SERVER
                conn.ConnectionString = "Server=190.105.214.230\\SQLEXPRESS;Database=Gutenberg;" +
                    "User Id=sa;Password=cloverfield161185";
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT_Editor", conn) {
                    CommandType = CommandType.StoredProcedure
                };
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                return dt;
            }
        }*/

    }
}
