using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using DatosGutenberg;

namespace NegocioGutenberg
{
    public class RedSocial {

        private long id;
        private Editor editor;
        private string socialURL;
        private string socialImage;

        public long Id { get => id; set => id = value; }
        public Editor Editor { get => editor; set => editor = value; }
        public string SocialURL { get => socialURL; set => socialURL = value; }
        public string SocialImage { get => socialImage; set => socialImage = value; }

        /// <summary>
        /// CONSTRUCTOR por defecto
        /// </summary>
        public RedSocial() { }

        /// <summary>
        /// CONSTRUCTOR para crear RedSocial por Editor
        /// </summary>
        /// <param name="fila"></param>
        /// <param name="d"></param>
        public RedSocial(SELECT_RedSocial_BY_EDITOR_Result fila, GutenbergEntities d) {
            Id = fila.Id;
            List<SELECT_Editor_BY_ID_Result> l = d.SELECT_Editor_BY_ID(fila.idEditor).ToList<SELECT_Editor_BY_ID_Result>();
            Editor = new Editor(l[0].Id, l[0].nombreEditor, l[0].profesion, l[0].urlFoto);
            SocialURL = fila.socialURL;
            SocialImage = fila.socialImage;
        }

        /// <summary>
        /// Trae desde la BD las Redes Sociales que tiene cada Editor
        /// </summary>
        /// <param name="ed"></param>
        /// <returns></returns>
        public static List<RedSocial> seleccionarRedSocialPorEditor(Editor ed) {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            List<SELECT_RedSocial_BY_EDITOR_Result> selectRedSocialEd = dat.SELECT_RedSocial_BY_EDITOR(ed.Id).ToList<SELECT_RedSocial_BY_EDITOR_Result>();
            List<RedSocial> listaRedes = new List<RedSocial>();
            foreach (SELECT_RedSocial_BY_EDITOR_Result sn in selectRedSocialEd) {
                listaRedes.Add(new RedSocial(sn, dat));
            }
            return listaRedes;
        }
    }
}
