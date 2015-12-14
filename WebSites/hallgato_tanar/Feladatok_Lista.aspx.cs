using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hallgato_Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            if(User.IsInRole("tanar"))
                SDS_Feladatok.SelectCommand = "SELECT * FROM [Feladatok]";
            else
                SDS_Feladatok.SelectCommand = "SELECT * FROM [Feladatok] WHERE [Tulajdonos] = 'admin' OR [Tulajdonos] = '" + User.Identity.Name + "'";
        }
        else
            Response.Redirect("~/Default.aspx");
    }
    
}