using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HallgatoTanar : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TanarokDataContext tdc = new TanarokDataContext();
        IQueryable<Tanarok> tanarok;
        Tanarok tanar = new Tanarok();
        tanarok = from m in tdc.Tanaroks
                  select m;
        tanar = tanarok.First();

        if (LoginView2.FindControl("Label_Tanar_Neve") != null)
        {
            ((Label)LoginView2.FindControl("Label_Tanar_Neve")).Text = tanar.Nev;
        }

        if (LoginView2.FindControl("Label_Rovid_Leiras") != null)
        {
            ((Label)LoginView2.FindControl("Label_Rovid_Leiras")).Text = tanar.Rovid_leiras;
        }
    }
}
