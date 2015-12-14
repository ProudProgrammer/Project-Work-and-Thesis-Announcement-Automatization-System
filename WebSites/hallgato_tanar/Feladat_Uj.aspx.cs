using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyLibrary;

public partial class Feladat_Uj : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            Logika logika = MyLibrary.Logika.GetInstance();

            FelevValaszto.Items.FindByValue("aktualis").Text = logika.AktualisFelev();
            FelevValaszto.Items.FindByValue("kovetkezo").Text = logika.KovetkezoFelev();
        }
        else
            Response.Redirect("~/Default.aspx");
    }
    protected void LetrehozButton_Click(object sender, EventArgs e)
    {
        Logika logika = MyLibrary.Logika.GetInstance();

        FeladatokDataContext fdc = new FeladatokDataContext();
        Feladatok feladat = new Feladatok();

        feladat.Nev = FeladatNev.Text;
        feladat.Felev = FelevValaszto.SelectedValue == "aktualis" ? logika.AktualisFelev() : logika.KovetkezoFelev();
        feladat.Leiras_Rovid = FeladatRovidLeiras.Text;
        feladat.Leiras_Hosszu = FeladatHosszuLeiras.Text;
        feladat.Statusz = "aktiv";
        feladat.Tulajdonos = User.Identity.Name;

        fdc.Feladatoks.InsertOnSubmit(feladat);
        fdc.SubmitChanges();

        FeladatNev.Text = "";
        FeladatRovidLeiras.Text = "";
        FeladatHosszuLeiras.Text = "";
    }
}