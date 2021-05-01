using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.net_Partie_13_AJAX
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        StagiaireContext stagiaireContext = new StagiaireContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            remplirGrid();
           
        }
        void remplirGrid()
        {
            List<Stagiaire> stagiaires= stagiaireContext.stagiaires.ToList();
            GridView2.DataSource = stagiaires;
            GridView2.DataBind();
        }
        protected void Ajouter_Click(object sender, EventArgs e)
        {
            Thread.Sleep(3000);
            stagiaireContext.stagiaires.Add(new Stagiaire()
            {
                id = int.Parse(Id.Text),
                Nom = Nom.Text,
                Prenom = Prenom.Text,
                Group = Group.Text
            });
            stagiaireContext.SaveChanges();
            remplirGrid();
        }
    }
}