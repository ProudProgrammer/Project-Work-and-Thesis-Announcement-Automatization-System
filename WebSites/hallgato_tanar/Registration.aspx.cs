using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyLibrary;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            string usernev = this.CreateUserWizard1.UserName;
            string teljesnev = ((TextBox)this.CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("TeljesNev")).Text;
            string neptunkod = ((TextBox)this.CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Neptunkod")).Text;
            string szak = ((TextBox)this.CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Szak")).Text;
            string szakirany = ((TextBox)this.CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Szakirany")).Text;
            string email = this.CreateUserWizard1.Email;
            string megjegyzes = ((TextBox)this.CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Megjegyzes")).Text;

            HallgatokDataContext hdc = new HallgatokDataContext();
            Hallgatok hallgato = new Hallgatok();
            hallgato.Felhasznalo_Nev = usernev;
            hallgato.Nev = teljesnev;
            hallgato.Neptunkod = neptunkod;
            hallgato.Szak = szak;
            hallgato.Szakirany = szakirany;
            hallgato.Email = email;
            hallgato.Megjegyzes = megjegyzes;
            hallgato.Ertesites = "semmi";

            hdc.Hallgatoks.InsertOnSubmit(hallgato);
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