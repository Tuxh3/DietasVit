using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VitaDiet.Lógica.Entidades
{
    public class Historial
    {

        public string ID { get; set; }
        public string IDPACIENTE { get; set; }
        public string HISTORIAL1 { get; set; }


        public Historial(string iD, string iDEPACIENTE, string hISTORIAL1)
        {
            ID = iD;
            IDPACIENTE = iDEPACIENTE;
            HISTORIAL1 = hISTORIAL1;
        }
    }
}