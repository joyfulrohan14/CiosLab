using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }

 

    protected void checking(object sender, GridViewRowEventArgs e)
    {
        
        if (GridView1.Rows.Count>=1)
            Server.Transfer("Materials.htm", true); //("~/page.aspx", true 
        else
            txtID.Text = "Wrong VCU number";
    }
   
}
