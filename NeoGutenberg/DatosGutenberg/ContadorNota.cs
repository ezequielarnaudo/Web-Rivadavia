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
    
    public partial class ContadorNota
    {
        public long Id { get; set; }
        public long idNota { get; set; }
        public long contador { get; set; }
    
        public virtual Nota Nota { get; set; }
    }
}
