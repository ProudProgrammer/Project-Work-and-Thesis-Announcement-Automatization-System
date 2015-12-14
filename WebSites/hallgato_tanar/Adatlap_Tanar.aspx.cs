using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adatlap_Tanar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /* 
         *  A tanár adatlapját csak bejeletkezett felhasználók láthatják,
         *  ha nem bejelentkezett felhasználó akarja megnézni az oldalt akkor azt átirányítjuk a Default.aspx oldalra
         */ 
        if (User.Identity.IsAuthenticated)
        {
            TanarokDataContext tdc = new TanarokDataContext();
            IQueryable<Tanarok> tanarok;
            Tanarok tanar = new Tanarok();
            tanarok = from m in tdc.Tanaroks
                      select m;
            tanar = tanarok.First();

            Label_Nev.Text = tanar.Nev;
            Label_Rovid_leiras.Text = tanar.Rovid_leiras;
            Label_Email.Text = tanar.Email;
            Label_Konzultacios_ido.Text = tanar.Konzultacios_ido;
            Label_Telefon.Text = tanar.Telefon;
            Label_Szoba.Text = tanar.Szoba;
            Label_Informacios_oldal.Text = tanar.Informacios_oldal;
        }
        else
            Response.Redirect("~/Default.aspx");
    }
}