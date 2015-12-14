using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Profil_Tanar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*  
         *  Az oldalt csak "tanar" csoport tagú felhasználók láthatják,
         *  ha más akarja megnézni az oldalt akkor azt átirányítjuk a Default.aspx oldalra.
         */
        if (User.IsInRole("tanar"))
        {
            /*  
             *  A megfelelő TextBox mezőkbe beírjuk az adatbázisból kiolvasott értékeket,
             *  ezáltal csak azok az adatok fognak módosulni melyeket a felhasználó módosít.
             *  Ez a művelet csak az oldal betöltődésekor fog végrehajtódni egyszer,
             *  A Mentés gomb megnyomása után már nem. Így kíméljük a szervert a felesleges lekérdezésektől.
             */
            if (!IsPostBack)
            {
                TanarokDataContext tdc = new TanarokDataContext();
                IQueryable<Tanarok> tanarok;
                Tanarok tanar = new Tanarok();
                tanarok = from m in tdc.Tanaroks
                          select m;
                tanar = tanarok.First();

                TextBox_Nev.Text = tanar.Nev;
                TextBox_Rovid_leiras.Text = tanar.Rovid_leiras;
                TextBox_Email.Text = tanar.Email;
                TextBox_Konzultacios_ido.Text = tanar.Konzultacios_ido;
                TextBox_Telefon.Text = tanar.Telefon;
                TextBox_Szoba.Text = tanar.Szoba;
                TextBox_Informacios_oldal.Text = tanar.Informacios_oldal;

                if (tanar.Ertesites == "semmi")
                    Ertesites.SelectedValue = "semmi";
                else if (tanar.Ertesites == "minden")
                    Ertesites.SelectedValue = "minden";
            }
        }
        else
            Response.Redirect("~/Default.aspx");
    }

    /// <summary>
    /// Az adatok mentéséhez kiolvassuk a TextBox mezőkből az adatokat, majd beírjuk az adatbázisba.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button_Mentes_Click(object sender, EventArgs e)
    {
        TanarokDataContext tdc = new TanarokDataContext();
        IQueryable<Tanarok> tanarok;
        Tanarok tanar = new Tanarok();
        tanarok = from m in tdc.Tanaroks
                  select m;
        tanar = tanarok.First();

        tanar.Nev = TextBox_Nev.Text;
        tanar.Rovid_leiras = TextBox_Rovid_leiras.Text;
        tanar.Email = TextBox_Email.Text;
        tanar.Konzultacios_ido = TextBox_Konzultacios_ido.Text;
        tanar.Telefon = TextBox_Telefon.Text;
        tanar.Szoba = TextBox_Szoba.Text;
        tanar.Informacios_oldal = TextBox_Informacios_oldal.Text;
        tanar.Ertesites = Ertesites.SelectedValue;

        tdc.SubmitChanges();
    }
}