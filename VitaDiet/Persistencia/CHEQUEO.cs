//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VitaDiet.Persistencia
{
    using System;
    using System.Collections.Generic;
    
    public partial class CHEQUEO
    {
        public int ID { get; set; }
        public string CEDULA_PACIENTE { get; set; }
        public string CEDULA_NUTRICIONISTA { get; set; }
        public Nullable<System.DateTime> FECHA_CHEQUEO { get; set; }
    
        public virtual PACIENTE PACIENTE { get; set; }
        public virtual NUTRICIONISTA NUTRICIONISTA { get; set; }
    }
}
