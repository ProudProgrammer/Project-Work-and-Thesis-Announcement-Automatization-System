using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adatlap_Hallgato : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        QueryStringParameter qsp = new QueryStringParameter();
        
        /* 
         *  A hallgató adatlapját csak bejeletkezett felhasználók láthatják,
         *  ha nem bejelentkezett felhasználó akarja megnézni az oldalt akkor azt átirányítjuk a Default.aspx oldalra
         */
        if (User.Identity.IsAuthenticated && (User.IsInRole("tanar") || "Nev=" + User.Identity.Name == ClientQueryString))
        {   
        }
        else
            Response.Redirect("~/Default.aspx");
    }
}