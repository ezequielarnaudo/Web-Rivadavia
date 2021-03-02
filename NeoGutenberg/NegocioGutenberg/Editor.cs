using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;
using DatosGutenberg;

namespace NegocioGutenberg
{
    public class Editor {

        private long id; // Es LONG porque en la base de datos es del tipo BIGINT
        private string nombreEditor;
        private string profesion;
        private string urlFoto;

        // SETTERS Y GETTERS
        public long Id { get => id; set => id = value; }
        public string NombreEditor { get => nombreEditor; set => nombreEditor = value; }
        public string Profesion { get => profesion; set => profesion = value; }
        public string UrlFoto { get => urlFoto; set => urlFoto = value; }

        /// <summary>
        /// CONSTRUCTOR para guardar todos los Editores que se traen de la BD al hacer SELECT
        /// </summary>
        /// <param name="fila"></param>
        public Editor(SELECT_Editor_Result fila) {
            Id = fila.Id;
            NombreEditor = fila.nombreEditor;
            Profesion = fila.profesion;
            UrlFoto = fila.urlFoto;
        }

        /// <summary>
        /// CONSTRUCTOR por defecto
        /// </summary>
        public Editor() { }

        /// <summary>
        /// CONSTRUCTOR para crear objetos Editores que son FK de otras Tablas
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombEd"></param>
        /// <param name="prof"></param>
        /// <param name="url"></param>
        public Editor(long id, string nombEd, string prof, string url) {
            Id = id;
            NombreEditor = nombEd;
            Profesion = prof;
            UrlFoto = url;
        }

        /// <summary>
        /// Trae todos los Editores de la BD
        /// </summary>
        /// <returns></returns>
        public static List<Editor> seleccionarEditores() {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            /* Obtengo los Editores de la base de datos con un SELECT y los almaceno en una lista
             del tipo de datos que me devuelve el SELECT_Editor() */
            List<SELECT_Editor_Result> selectEditores = dat.SELECT_Editor().ToList<SELECT_Editor_Result>();
            List<Editor> listaEditores = new List<Editor>(); // Lista donde almaceno cada uno de los objetos Editor
            foreach (SELECT_Editor_Result se in selectEditores) {
                listaEditores.Add(new Editor(se));
            }
            return listaEditores;
        }

        public static void insertarEditor(string nombre, string prof, string urlFoto) {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            dat.INSERT_Editor(nombre, prof, urlFoto);
        }

    }
}
