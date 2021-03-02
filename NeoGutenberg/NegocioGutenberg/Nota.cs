using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;

using DatosGutenberg;
using System.Data.Entity.Core.Objects;

namespace NegocioGutenberg
{
    public class Nota {

        private long id;
        private Tag idTag;
        private Editor idEditor;
        private string titulo;
        private string subtitulo;
        private string foto;
        private string descripcionFoto;
        private string textoCompleto;
        private DateTime fechaGuardado;
        private DateTime fechaPublicacion;

        // Variable para guardar el número en el orden en el que se muestran las notas más leídas
        private int ordenNota;
        public string urlCortada;


        // SETTERS Y GETTERS
        public long Id { get => id; set => id = value; }
        public Tag IdTag { get => idTag; set => idTag = value; }
        public Editor IdEditor { get => idEditor; set => idEditor = value; }
        public string Titulo { get => titulo; set => titulo = value; }
        public string Subtitulo { get => subtitulo; set => subtitulo = value; }
        public string Foto { get => foto; set => foto = value; }
        public string DescripcionFoto { get => descripcionFoto; set => descripcionFoto = value; }
        public string TextoCompleto { get => textoCompleto; set => textoCompleto = value; }
        public DateTime FechaGuardado { get => fechaGuardado; set => fechaGuardado = value; }
        public DateTime FechaPublicacion { get => fechaPublicacion; set => fechaPublicacion = value; }
        public int OrdenNota { get => ordenNota; set => ordenNota = value; }



        /// <summary>
        /// CONSTRUCTOR para crear Notas más leídas
        /// </summary>
        /// <param name="fila"></param>
        /// <param name="ordenNota2"></param>
        public Nota(SELECT_Nota_BY_TOP_Result fila, int ordenNota2, GutenbergEntities d) {
            Id = fila.Id;
            Titulo = fila.titulo;
            OrdenNota = ordenNota2;
            List<SELECT_Tag_BY_ID_Result> t = d.SELECT_Tag_BY_ID(fila.idTag).ToList<SELECT_Tag_BY_ID_Result>();
            IdTag = new Tag(fila.idTag, t[0].nombre);
            List<SELECT_Editor_BY_ID_Result> l = d.SELECT_Editor_BY_ID(fila.idEditor).ToList<SELECT_Editor_BY_ID_Result>();
            IdEditor = new Editor(l[0].Id, l[0].nombreEditor, l[0].profesion, l[0].urlFoto);
            Titulo = fila.titulo;
            Subtitulo = fila.subtitulo;
            Foto = fila.foto;
            DescripcionFoto = fila.descripcionFoto;
            TextoCompleto = fila.textoCompleto;
            FechaGuardado = fila.fechaGuardado;
            FechaPublicacion = fila.fechaPublicacion;
        }

        /// <summary>
        /// CONSTRUCTOR para guardar todas las Notas que se traen de la BD al hacer SELECT
        /// </summary>
        /// <param name="fila"></param>
        /// <param name="d"></param>
        public Nota(SELECT_Nota_Result fila, GutenbergEntities d) {
            Id = fila.Id;
            List<SELECT_Tag_BY_ID_Result> t = d.SELECT_Tag_BY_ID(fila.idTag).ToList<SELECT_Tag_BY_ID_Result>();
            IdTag = new Tag(fila.idTag, t[0].nombre);
            List<SELECT_Editor_BY_ID_Result> l = d.SELECT_Editor_BY_ID(fila.idEditor).ToList<SELECT_Editor_BY_ID_Result>();
            IdEditor = new Editor(l[0].Id, l[0].nombreEditor, l[0].profesion, l[0].urlFoto);
            Titulo = fila.titulo;
            Subtitulo = fila.subtitulo;
            Foto = fila.foto;
            DescripcionFoto = fila.descripcionFoto;
            TextoCompleto = fila.textoCompleto;
            FechaGuardado = fila.fechaGuardado;
            FechaPublicacion = fila.fechaPublicacion;
        }

        /// <summary>
        /// CONSTRUCTOR para crear Notas por Editor
        /// </summary>
        /// <param name="fila"></param>
        public Nota(SELECT_Nota_BY_EDITOR_Result fila, GutenbergEntities d) {
            Id = fila.Id;
            List<SELECT_Tag_BY_ID_Result> t = d.SELECT_Tag_BY_ID(fila.idTag).ToList<SELECT_Tag_BY_ID_Result>();
            IdTag = new Tag(fila.idTag, t[0].nombre);
            List<SELECT_Editor_BY_ID_Result> l = d.SELECT_Editor_BY_ID(fila.idEditor).ToList<SELECT_Editor_BY_ID_Result>();
            IdEditor = new Editor(l[0].Id, l[0].nombreEditor, l[0].profesion, l[0].urlFoto);
            Titulo = fila.titulo;
            Subtitulo = fila.subtitulo;
            Foto = fila.foto;
            DescripcionFoto = fila.descripcionFoto;
            TextoCompleto = fila.textoCompleto;
            FechaGuardado = fila.fechaGuardado;
            FechaPublicacion = fila.fechaPublicacion;
        }

        /// <summary>
        /// CONSTRUCTOR para crear Notas por Tag
        /// </summary>
        /// <param name="fila"></param>
        public Nota(SELECT_Nota_BY_TAG_Result fila, GutenbergEntities d) {
            Id = fila.Id;
            List<SELECT_Tag_BY_ID_Result> t = d.SELECT_Tag_BY_ID(fila.idTag).ToList<SELECT_Tag_BY_ID_Result>();
            IdTag = new Tag(fila.idTag, t[0].nombre);
            List<SELECT_Editor_BY_ID_Result> l = d.SELECT_Editor_BY_ID(fila.idEditor).ToList<SELECT_Editor_BY_ID_Result>();
            IdEditor = new Editor(l[0].Id, l[0].nombreEditor, l[0].profesion, l[0].urlFoto);
            Titulo = fila.titulo;
            Subtitulo = fila.subtitulo;
            Foto = fila.foto;
            DescripcionFoto = fila.descripcionFoto;
            TextoCompleto = fila.textoCompleto;
            FechaGuardado = fila.fechaGuardado;
            FechaPublicacion = fila.fechaPublicacion;
        }

        /// <summary>
        /// CONSTRUCTOR para crear Notas por ID
        /// </summary>
        /// <param name="fila"></param>
        /// <param name="d"></param>
        public Nota(SELECT_Nota_BY_ID_Result fila, GutenbergEntities d) {
            Id = fila.Id;
            List<SELECT_Tag_BY_ID_Result> t = d.SELECT_Tag_BY_ID(fila.idTag).ToList<SELECT_Tag_BY_ID_Result>();
            IdTag = new Tag(fila.idTag, t[0].nombre);
            List<SELECT_Editor_BY_ID_Result> l = d.SELECT_Editor_BY_ID(fila.idEditor).ToList<SELECT_Editor_BY_ID_Result>();
            IdEditor = new Editor(l[0].Id, l[0].nombreEditor, l[0].profesion, l[0].urlFoto);
            Titulo = fila.titulo;
            Subtitulo = fila.subtitulo;
            Foto = fila.foto;
            DescripcionFoto = fila.descripcionFoto;
            TextoCompleto = fila.textoCompleto;
            FechaGuardado = fila.fechaGuardado;
            FechaPublicacion = fila.fechaPublicacion;
        }

        /// <summary>
        /// CONSTRUCTOR para crear últimas Notas. Traídas por fecha
        /// de publicación descendiente
        /// </summary>
        /// <param name="fila"></param>
        /// <param name="d"></param>
        public Nota(SELECT_Nota_Ultimas_Result fila, GutenbergEntities d) {
            Id = fila.Id;
            List<SELECT_Tag_BY_ID_Result> t = d.SELECT_Tag_BY_ID(fila.idTag).ToList<SELECT_Tag_BY_ID_Result>();
            IdTag = new Tag(fila.idTag, t[0].nombre);
            List<SELECT_Editor_BY_ID_Result> l = d.SELECT_Editor_BY_ID(fila.idEditor).ToList<SELECT_Editor_BY_ID_Result>();
            IdEditor = new Editor(l[0].Id, l[0].nombreEditor, l[0].profesion, l[0].urlFoto);
            Titulo = fila.titulo;
            Subtitulo = fila.subtitulo;
            Foto = fila.foto;
            DescripcionFoto = fila.descripcionFoto;
            TextoCompleto = fila.textoCompleto;
            FechaGuardado = fila.fechaGuardado;
            FechaPublicacion = fila.fechaPublicacion;
        }

        /// <summary>
        /// CONSTRUCTOR para crear últimas Notas. Filtradas por TAG
        /// y traídas por fecha de publicación descendiente.
        /// </summary>
        /// <param name="fila"></param>
        /// <param name="d"></param>
        public Nota(SELECT_Nota_Ultimas_BY_TAG_Result fila, GutenbergEntities d) {
            Id = fila.Id;
            List<SELECT_Tag_BY_ID_Result> t = d.SELECT_Tag_BY_ID(fila.idTag).ToList<SELECT_Tag_BY_ID_Result>();
            IdTag = new Tag(fila.idTag, t[0].nombre);
            List<SELECT_Editor_BY_ID_Result> l = d.SELECT_Editor_BY_ID(fila.idEditor).ToList<SELECT_Editor_BY_ID_Result>();
            IdEditor = new Editor(l[0].Id, l[0].nombreEditor, l[0].profesion, l[0].urlFoto);
            Titulo = fila.titulo;
            Subtitulo = fila.subtitulo;
            Foto = fila.foto;
            DescripcionFoto = fila.descripcionFoto;
            TextoCompleto = fila.textoCompleto;
            FechaGuardado = fila.fechaGuardado;
            FechaPublicacion = fila.fechaPublicacion;
        }

        /// <summary>
        /// CONSTRUCTOR para crear últimas Notas. Filtradas por TAG
        /// y traídas por fecha de publicación descendiente para Paginación
        /// </summary>
        /// <param name="fila"></param>
        /// <param name="d"></param>
        public Nota(SELECT_Nota_Ultimas_BY_TAG_Indexed_Result fila, GutenbergEntities d) {
            Id = fila.Id;
            List<SELECT_Tag_BY_ID_Result> t = d.SELECT_Tag_BY_ID(fila.idTag).ToList<SELECT_Tag_BY_ID_Result>();
            IdTag = new Tag(fila.idTag, t[0].nombre);
            List<SELECT_Editor_BY_ID_Result> l = d.SELECT_Editor_BY_ID(fila.idEditor).ToList<SELECT_Editor_BY_ID_Result>();
            IdEditor = new Editor(l[0].Id, l[0].nombreEditor, l[0].profesion, l[0].urlFoto);
            Titulo = fila.titulo;
            Subtitulo = fila.subtitulo;
            Foto = fila.foto;
            DescripcionFoto = fila.descripcionFoto;
            TextoCompleto = fila.textoCompleto;
            FechaGuardado = fila.fechaGuardado;
            FechaPublicacion = fila.fechaPublicacion;
        }

        /// <summary>
        /// CONSTRUCTOR para crear Notas cuando se realiza una búsqueda
        /// </summary>
        /// <param name="fila"></param>
        /// <param name="d"></param>
        public Nota(Search_Nota_Indexed_Result fila, GutenbergEntities d) {
            Id = fila.IdTablaNota;
            //List<SELECT_Tag_BY_ID_Result> t = d.SELECT_Tag_BY_ID(fila.idTag).ToList<SELECT_Tag_BY_ID_Result>();
            //IdTag = new Tag(fila.idTag, t[0].nombre);
            List<SELECT_Editor_BY_ID_Result> l = d.SELECT_Editor_BY_ID(fila.idEditor).ToList<SELECT_Editor_BY_ID_Result>();
            IdEditor = new Editor(l[0].Id, l[0].nombreEditor, l[0].profesion, l[0].urlFoto);
            Titulo = fila.titulo;
            Subtitulo = fila.subtitulo;
            Foto = fila.foto;
            DescripcionFoto = fila.descripcionFoto;
            TextoCompleto = fila.textoCompleto;
            FechaGuardado = fila.fechaGuardado;
            FechaPublicacion = fila.fechaPublicacion;
        }

        /// <summary>
        /// CONSTRUCTOR por defecto
        /// </summary>
        public Nota() { }

        /// <summary>
        /// Trae desde la BD las notas más leídas
        /// </summary>
        /// <returns></returns>
        public static List<Nota> seleccionarNotasTop() {
            int ordenNota2 = 0;
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            List<SELECT_Nota_BY_TOP_Result> selectNotasTop = dat.SELECT_Nota_BY_TOP().ToList<SELECT_Nota_BY_TOP_Result>();
            List<Nota> listaNotasMasLeidas = new List<Nota>();
            foreach (SELECT_Nota_BY_TOP_Result sn in selectNotasTop) {
                ordenNota2 += 1;
                listaNotasMasLeidas.Add(new Nota(sn, ordenNota2, dat));
            }
            return listaNotasMasLeidas;
        }

        /// <summary>
        /// Trae desde la BD las Notas del Editor indicado ordenadas por fecha de publicación
        /// </summary>
        /// <param name="e"></param>
        /// <returns></returns>
        public static List<Nota> seleccionarNotasPorEditor(Editor e) {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            List<SELECT_Nota_BY_EDITOR_Result> selectNotasEditor = dat.SELECT_Nota_BY_EDITOR(e.Id).ToList<SELECT_Nota_BY_EDITOR_Result>();
            List<Nota> listaNotasEditor = new List<Nota>();
            foreach (SELECT_Nota_BY_EDITOR_Result sn in selectNotasEditor) {
                listaNotasEditor.Add(new Nota(sn, dat));
            }
            return listaNotasEditor;
        }

        /// <summary>
        /// Trae desde la BD las Notas con el TAG indicado
        /// </summary>
        public static List<Nota> seleccionarNotasPorTag(long idTag) {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            List<SELECT_Nota_BY_TAG_Result> selectNotasTag = dat.SELECT_Nota_BY_TAG(idTag).ToList<SELECT_Nota_BY_TAG_Result>();
            List<Nota> listaNotasTag = new List<Nota>();
            foreach (SELECT_Nota_BY_TAG_Result sn in selectNotasTag) {
                listaNotasTag.Add(new Nota(sn, dat));
            }
            return listaNotasTag;
        }

        /// <summary>
        /// Traer NOTA desde la BD por su ID
        /// </summary>
        /// <param name="idNota"></param>
        /// <returns></returns>
        public static List<Nota> seleccionarNotasPorID(long idNota) {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            List<SELECT_Nota_BY_ID_Result> selectNotasID = dat.SELECT_Nota_BY_ID(idNota).ToList<SELECT_Nota_BY_ID_Result>();
            List<Nota> listaNotasID = new List<Nota>();
            foreach (SELECT_Nota_BY_ID_Result sn in selectNotasID) {
                listaNotasID.Add(new Nota(sn, dat));
            }
            return listaNotasID;
        }

        /// <summary>
        /// Trae las últimas Notas ordenadas por fecha de publicación descendiente
        /// </summary>
        /// <param name="cant"></param>
        /// <returns></returns>
        public static List<Nota> seleccionarUltimasNotas(long cant) {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            List<SELECT_Nota_Ultimas_Result> selectNotasUltimas = dat.SELECT_Nota_Ultimas(cant).ToList<SELECT_Nota_Ultimas_Result>();
            List<Nota> listaNotasUltimas = new List<Nota>();
            foreach (SELECT_Nota_Ultimas_Result sn in selectNotasUltimas) {
                listaNotasUltimas.Add(new Nota(sn, dat));
            }
            return listaNotasUltimas;
        }

        /// <summary>
        /// Trae las últimas Notas filtradas por TAG y ordenadas por fecha de publicación descendiente
        /// </summary>
        public static List<Nota> seleccionarUltimasNotasPorTag(long idTag, long cantNotas) {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            List<SELECT_Nota_Ultimas_BY_TAG_Result> selectNotasUltTag = dat.SELECT_Nota_Ultimas_BY_TAG(idTag, cantNotas).ToList<SELECT_Nota_Ultimas_BY_TAG_Result>();
            List<Nota> listaNotasUltTag = new List<Nota>();
            foreach (SELECT_Nota_Ultimas_BY_TAG_Result sn in selectNotasUltTag) {
                listaNotasUltTag.Add(new Nota(sn, dat));
            }
            return listaNotasUltTag;
        }

        /// <summary>
        /// Trae las últimas Notas filtradas por TAG y ordenadas por fecha de publicación descendiente para ser
        /// mostradas en la Paginación
        /// </summary>
        public static List<Nota> seleccionarUltimasNotasPorTagIndex(long idTag, long pag, long cantPorPag) {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            List<SELECT_Nota_Ultimas_BY_TAG_Indexed_Result> selectNotas = dat.SELECT_Nota_Ultimas_BY_TAG_Indexed(idTag, pag, cantPorPag).ToList<SELECT_Nota_Ultimas_BY_TAG_Indexed_Result>();
            List<Nota> listaNotasUlt = new List<Nota>();
            foreach (SELECT_Nota_Ultimas_BY_TAG_Indexed_Result sn in selectNotas) {
                listaNotasUlt.Add(new Nota(sn, dat));
            }
            return listaNotasUlt;
        }

        public static int seleccionarUltimasNotasPorTagCount(int idTag) {
            DatosGutenberg.GutenbergEntities dat = new GutenbergEntities();
            List<int?> OR = dat.SELECT_Nota_Ultimas_BY_TAG_Count(idTag).ToList();
            if (OR != null && OR.Count > 0) {
                if (OR[0] != null) {
                    return OR[0].Value;
                } else {
                    return 0;
                }
            } else  {
                return 0;
            }
            
        }

        /// <summary>
        /// Se inserta una NOTA en la BD
        /// </summary>
        public static void insertarNota(long idTag, long idEditor, string titulo, string subtitulo, string foto,
            string descFoto, string textoCompl, string fechaGuard, string fechaPubl) {
            DatosGutenberg.GutenbergEntities dat = new DatosGutenberg.GutenbergEntities();
            dat.INSERT_Nota(idTag, idEditor, titulo, subtitulo, foto, descFoto, textoCompl, fechaGuard, fechaPubl);
        }


        /// <summary>
        /// Trae desde la BD todas las Notas
        /// </summary>
        /// <returns></returns>
        public static List<Nota> seleccionarNotas() {
            DatosGutenberg.GutenbergEntities dat = new GutenbergEntities();
            List<SELECT_Nota_Result> selectNotas = dat.SELECT_Nota().ToList<SELECT_Nota_Result>();
            List<Nota> listaNotas = new List<Nota>();
            foreach (SELECT_Nota_Result sn in selectNotas) {
                listaNotas.Add(new Nota(sn, dat));
            }
            return listaNotas;
        }

        /// <summary>
        /// Actuializame esta vieja
        /// </summary>
        /// <param name="idNota"></param>
        /// <param name="idTagm"></param>
        /// <param name="idEditor"></param>
        /// <param name="titulo"></param>
        /// <param name="subtitulo"></param>
        /// <param name="foto"></param>
        /// <param name="descripcionFoto"></param>
        /// <param name="textoCompleto"></param>
        /// <param name="fechaGuardado"></param>
        /// <param name="fechaPublicacion"></param>
        public static void UpdateNota(
            long idNota,
            long idTag,
            long idEditor,
            string titulo,
            string subtitulo,
            string foto,
            string descripcionFoto,
            string textoCompleto,
            string fechaGuardado,
            string fechaPublicacion
            )
        {
            DatosGutenberg.GutenbergEntities e = new GutenbergEntities();
            e.UPDATE_NOTA(idNota, idTag, idEditor, titulo, subtitulo, foto, descripcionFoto, textoCompleto, fechaGuardado, fechaPublicacion);
        }

        /// <summary>
        /// Se suma 1 al contador de la Nota. ID Nota como parámetro
        /// </summary>
        /// <param name="idNota"></param>
        public static void updateContadorNota(long idNota) {
            DatosGutenberg.GutenbergEntities dat = new GutenbergEntities();
            dat.UPDATE_ContadorNota(idNota);
        }

        /// <summary>
        /// Busca las Notas donde el título coincide con alguna de las palabras ingresadas. Se puede ignorar nota por Tag
        /// Lo utilizamos para Paginar la búsqueda
        /// </summary>
        public static List<Nota> buscarNotasIndex(string busq, long pag, long cantNotPorPag, long ignorTag) {
            DatosGutenberg.GutenbergEntities dat = new GutenbergEntities();
            List<Search_Nota_Indexed_Result> notasBuscadas = dat.Search_Nota_Indexed(busq, pag, cantNotPorPag, ignorTag).ToList<Search_Nota_Indexed_Result>();
            List<Nota> listaNotas = new List<Nota>();
            foreach (Search_Nota_Indexed_Result sn in notasBuscadas) {
                listaNotas.Add(new Nota(sn, dat));
            }
            return listaNotas;
        }

        /// <summary>
        /// Se corta el link completo o abreviado de YouTube para obtener el código del video que
        /// se utiliza como parámetro y poder utilizarlo en formato HTML
        /// </summary>
        public static string splitURL(string url) {
            string urlNueva;
            /*Si es link completo se obtiene la palabra desde el = en adelante.
             Si es link abreviado se obtiene la palabra desde el último / en adelante.*/
            if (url.Contains("youtube.com")) {
                char delim = '=';
                string[] palabras = url.Split(delim);
                urlNueva = "https://www.youtube.com/embed/" + palabras.Last();
                return urlNueva;
            }
            if (url.Contains("youtu.be")) {
                char delim = '/';
                string[] palabras = url.Split(delim);
                urlNueva = "https://www.youtube.com/embed/" + palabras.Last();
                return urlNueva;
            }
            return null;
        }

    }
}
