using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VitaDiet.Lógica.Entidades
{
    using System;
    using System.Collections.Generic;

    public partial class Distribuidor
    {
        

        public string ID { get; set; }
        public Nullable<int> CEDULA_DISTRIBUIDOR { get; set; }
        public string NOMBRE { get; set; }
        public string APELLIDO { get; set; }
        public string CELULAR { get; set; }
        public string CORREO { get; set; }
        public string USUARIOID { get; set; }

        public Distribuidor (string iD, int cedula, string nOMBRE, string aPELLIDO,
            string cELULAR, string cORREO, string uSUARIOID)
        {
            ID = iD;
            CEDULA_DISTRIBUIDOR = cedula;
            NOMBRE = nOMBRE;
            APELLIDO = aPELLIDO;
            CELULAR = cELULAR;
            CORREO = cORREO;
            USUARIOID = uSUARIOID;
        }
        
    }
}