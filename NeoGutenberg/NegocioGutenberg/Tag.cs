using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using DatosGutenberg;

namespace NegocioGutenberg
{
    public class Tag {

        private long id;
        private string nombre;

        public long Id { get => id; set => id = value; }
        public string Nombre { get => nombre; set => nombre = value; }

        /// <summary>
        /// CONSTRUCTOR por defecto
        /// </summary>
        public Tag() {

        }

        /// <summary>
        /// CONSTRUCTOR para crear TAG que viene como FK en otra tabla. En Nota, por ejemplo
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombre"></param>
        public Tag(long id, string nombre) {
            Id = id;
            Nombre = nombre;
        }

        /// <summary>
        /// CONSTRUCTOR para crear todos los TAGS que se traen de la BD
        /// </summary>
        /// <param name="fila"></param>
        public Tag(SELECT_Tag_Result fila) {
            Id = fila.Id;
            Nombre = fila.nombre;
        }

        /// <summary>
        /// CONSTRUCTOR para crear el TAG por el ID indicado
        /// </summary>
        /// <param name="fila"></param>
        public Tag(SELECT_Tag_BY_ID_Result fila) {
            Id = fila.Id;
            Nombre = fila.nombre;
        }

        /// <summary>
        /// Trae todos los TAGS de la BD
        /// </summary>
        /// <returns></returns>
        public static List<Tag> seleccionarTags() {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            List<SELECT_Tag_Result> selectTags = dat.SELECT_Tag().ToList<SELECT_Tag_Result>();
            List<Tag> listaTags = new List<Tag>();
            foreach (SELECT_Tag_Result st in selectTags) {
                listaTags.Add(new Tag(st));
            }
            return listaTags;
        }

        /// <summary>
        /// Trae desde la BD el TAG correspondiente al ID pasado
        /// </summary>
        /// <param name="idTag"></param>
        /// <returns></returns>
        public static List<Tag> seleccionarTagsPorID(long idTag) {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            List<SELECT_Tag_BY_ID_Result> selectTag = dat.SELECT_Tag_BY_ID(idTag).ToList<SELECT_Tag_BY_ID_Result>();
            List<Tag> listaTag = new List<Tag>();
            foreach (SELECT_Tag_BY_ID_Result st in selectTag) {
                listaTag.Add(new Tag(st));
            }
            return listaTag;
        }

    }
}
