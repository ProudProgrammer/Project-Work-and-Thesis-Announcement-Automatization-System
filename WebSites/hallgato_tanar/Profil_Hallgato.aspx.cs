using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyLibrary;

public partial class Profil_Hallgato : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        /*  
         *  Az oldalt csak bejeletkezett felhasználók láthatják és nem lehet a "tanar" csoport tagja sem
         *  Ha nem bejelentkezett felhasználó akarja megnézni az oldalt akkor azt átirányítjuk a Default.aspx oldalra
         */
        if (User.Identity.IsAuthenticated && !User.IsInRole("tanar"))
        {
            /*  
             *  A megfelelő TextBox mezőkbe beírjuk az adatbázisból kiolvasott értékeket,
             *  ezáltal csak azok az adatok fognak módosulni melyeket a felhasználó módosít.
             *  Ez a művelet csak az oldal betöltődésekor fog végrehajtódni egyszer,
             *  A Mentés gomb megnyomása után már nem. Így kíméljük a szervert a felesleges lekérdezésektől.
             */
            if (!IsPostBack)
            {
                HallgatokDataContext hdc = new HallgatokDataContext();
                IQueryable<Hallgatok> hallgatok;
                Hallgatok hallgato = new Hallgatok();
                hallgatok = from h in hdc.Hallgatoks
                            where h.Felhasznalo_Nev == User.Identity.Name
                            select h;
                hallgato = hallgatok.First();

                Teljes_Nev.Text = hallgato.Nev;
                Neptunkod.Text = hallgato.Neptunkod;
                Szak.Text = hallgato.Szak;
                Szakirany.Text = hallgato.Szakirany;
                Email.Text = hallgato.Email;
                Megjegyzes.Text = hallgato.Megjegyzes;

                if (hallgato.Ertesites == "semmi")
                    Ertesites.SelectedValue = "semmi";
                else if (hallgato.Ertesites == "minden")
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
        if (this.IsValid)
        {
            HallgatokDataContext hdc = new HallgatokDataContext();
            IQueryable<Hallgatok> hallgatok;
            Hallgatok hallgato = new Hallgatok();
            hallgatok = from h in hdc.Hallgatoks
                        where h.Felhasznalo_Nev == User.Identity.Name
                        select h;
            hallgato = hallgatok.First();

            hallgato.Nev = Teljes_Nev.Text;
            hallgato.Neptunkod = Neptunkod.Text;
            hallgato.Szak = Szak.Text;
            hallgato.Szakirany = Szakirany.Text;
            hallgato.Email = Email.Text;
            hallgato.Megjegyzes = Megjegyzes.Text;
            hallgato.Ertesites = Ertesites.SelectedValue;

            hdc.SubmitChanges();
        }
    }

    /// <summary>
    /// Validáljuk a Neptunkod TextBox-ba bevitt szoveg hosszát, ami 6 karakternél több nem lehet.
    /// </summary>
    /// <param name="source"></param>
    /// <param name="args"></param>
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int hossz = 6;
        string szoveg = args.Value;
        Logika logika = Logika.GetInstance();

        if (logika.SzovegHosszEllenorzes(szoveg, hossz))
            args.IsValid = true;
        else
            args.IsValid = false;
    }
}