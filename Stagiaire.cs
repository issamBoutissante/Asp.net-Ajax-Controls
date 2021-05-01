using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Asp.net_Partie_13_AJAX
{
    [Serializable]
    public class Stagiaire
    {
        public int id { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Group { get; set; }
    }
}