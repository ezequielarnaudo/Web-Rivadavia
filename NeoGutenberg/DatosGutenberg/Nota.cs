//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DatosGutenberg
{
    using System;
    using System.Collections.Generic;
    
    public partial class Nota
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Nota()
        {
            this.ContadorNota = new HashSet<ContadorNota>();
        }
    
        public long Id { get; set; }
        public long idTag { get; set; }
        public long idEditor { get; set; }
        public string titulo { get; set; }
        public string subtitulo { get; set; }
        public string fecha { get; set; }
        public string foto { get; set; }
        public string descripcionFoto { get; set; }
        public string textoCompleto { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ContadorNota> ContadorNota { get; set; }
        public virtual Editor Editor { get; set; }
        public virtual Tag Tag { get; set; }
    }
}
