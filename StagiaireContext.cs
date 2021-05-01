using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Asp.net_Partie_13_AJAX
{
    public class StagiaireContext:DbContext
    {
        public DbSet<Stagiaire> stagiaires { get; set; }
    }
}