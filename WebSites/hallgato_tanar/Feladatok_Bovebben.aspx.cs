using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feladatok_Hallgato_Bovebben : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!User.Identity.IsAuthenticated)
            Response.Redirect("~/Default.aspx");

        if (!IsPostBack)
        {
            FeladatokDataContext fdc = new FeladatokDataContext();
            Feladatok feladat = new Feladatok();
            IQueryable<Feladatok> feladatok;
            feladatok = from f in fdc.Feladatoks
                        where "ID=" + f.ID == ClientQueryString
                        select f;
            feladat = feladatok.First();

            TextBox_Nev.Text = feladat.Nev;
            TextBox_Rovid.Text = feladat.Leiras_Rovid;
            TextBox_Hosszu.Text = feladat.Leiras_Hosszu;
            Label_Felev.Text = feladat.Felev;
            Label_Statusz.Text = feladat.Statusz;
            Label_Tulajdonos.Text = feladat.Tulajdonos;
            Label_Jelentkezett.Text = feladat.Jelentkezett;
        }

        FeladatokDataContext fdc2 = new FeladatokDataContext();
        Feladatok feladat2 = new Feladatok();
        IQueryable<Feladatok> feladatok2;
        feladatok2 = from f in fdc2.Feladatoks
                    where "ID=" + f.ID == ClientQueryString
                    select f;
        feladat2 = feladatok2.First();

        if (!(User.Identity.Name == feladat2.Tulajdonos | feladat2.Tulajdonos == "admin" | User.IsInRole("tanar")))
            Response.Redirect("~/Default.aspx");

        if (User.IsInRole("tanar"))
        {
            Button_Jelentkezes.Visible = false;
            Button_Leiratkozas.Visible = false;

            if (feladat2.Statusz == "csak_olvashato")
            {
                Button_Torles.Visible = false;
                Button_Modosit.Visible = false;
                Button_Veglegesit.Visible = false;
            }
            if(feladat2.Jelentkezett == null)
                Button_Veglegesit.Visible = false;
        }
        else
        {
            Button_Veglegesit.Visible = false;
            Button_Duplikal.Visible = false;
            Button_Modosit.Visible = false;

            if (feladat2.Statusz == "csak_olvashato" | feladat2.Jelentkezett != null)
            {
                Button_Jelentkezes.Visible = false;
                if(feladat2.Jelentkezett != User.Identity.Name)
                    Button_Leiratkozas.Visible = false;
            }
            else
            {
                Button_Leiratkozas.Visible = false;
            }

            if (feladat2.Tulajdonos != User.Identity.Name)
                Button_Torles.Visible = false;
        }
    }

    protected void Button_Modosit_Click(object sender, EventArgs e)
    {
        FeladatokDataContext fdc = new FeladatokDataContext();
        Feladatok feladat = new Feladatok();
        IQueryable<Feladatok> feladatok;
        feladatok = from f in fdc.Feladatoks
                    where "ID=" + f.ID == ClientQueryString
                    select f;
        feladat = feladatok.First();
        feladat.Nev = TextBox_Nev.Text;
        feladat.Leiras_Rovid = TextBox_Rovid.Text;
        feladat.Leiras_Hosszu = TextBox_Hosszu.Text;
        feladat.Statusz = Label_Statusz.Text;
        feladat.Tulajdonos = Label_Tulajdonos.Text;
        fdc.SubmitChanges();
    }
    protected void Button_Torles_Click(object sender, EventArgs e)
    {
        FeladatokDataContext fdc = new FeladatokDataContext();
        Feladatok feladat = new Feladatok();
        IQueryable<Feladatok> feladatok;
        feladatok = from f in fdc.Feladatoks
                    where "ID=" + f.ID == ClientQueryString
                    select f;
        feladat = feladatok.First();
        fdc.Feladatoks.DeleteOnSubmit(feladat);
        fdc.SubmitChanges();
        Response.Redirect("~/Feladatok_Lista.aspx");
    }
    protected void Button_Duplikal_Click(object sender, EventArgs e)
    {
        FeladatokDataContext fdc = new FeladatokDataContext();
        Feladatok feladat = new Feladatok();
        feladat.Nev = TextBox_Nev.Text;
        feladat.Felev = Label_Felev.Text;
        feladat.Leiras_Rovid = TextBox_Rovid.Text;
        feladat.Leiras_Hosszu = TextBox_Hosszu.Text;
        feladat.Statusz = "aktiv";
        feladat.Tulajdonos = "admin";

        fdc.Feladatoks.InsertOnSubmit(feladat);
        fdc.SubmitChanges();
        Response.Redirect("~/Feladatok_Lista.aspx");
    }
    protected void Button_Jelentkezes_Click(object sender, EventArgs e)
    {
        FeladatokDataContext fdc = new FeladatokDataContext();
        Feladatok feladat = new Feladatok();
        IQueryable<Feladatok> feladatok;
        feladatok = from f in fdc.Feladatoks
                    where "ID=" + f.ID == ClientQueryString
                    select f;
        feladat = feladatok.First();
        feladat.Jelentkezett = User.Identity.Name;
        fdc.SubmitChanges();
        Response.Redirect("~/Feladatok_Lista.aspx");
    }
    protected void Button_Leiratkozas_Click(object sender, EventArgs e)
    {
        FeladatokDataContext fdc = new FeladatokDataContext();
        Feladatok feladat = new Feladatok();
        IQueryable<Feladatok> feladatok;
        feladatok = from f in fdc.Feladatoks
                    where "ID=" + f.ID == ClientQueryString
                    select f;
        feladat = feladatok.First();
        feladat.Jelentkezett = null;
        fdc.SubmitChanges();
        Response.Redirect("~/Feladatok_Lista.aspx");
    }
    protected void Button_Veglegesit_Click(object sender, EventArgs e)
    {
        FeladatokDataContext fdc = new FeladatokDataContext();
        Feladatok feladat = new Feladatok();
        IQueryable<Feladatok> feladatok;
        feladatok = from f in fdc.Feladatoks
                    where "ID=" + f.ID == ClientQueryString
                    select f;
        feladat = feladatok.First();
        feladat.Statusz = "csak_olvashato";
        fdc.SubmitChanges();
        Response.Redirect("~/Feladatok_Lista.aspx");
    }
}