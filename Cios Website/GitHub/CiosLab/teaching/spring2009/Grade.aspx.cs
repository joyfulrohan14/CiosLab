using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class cs_dmb_teaching_spring2009_Grade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         this.AccessDataSource1.DataFile=Server.MapPath(".")+"/CMSC691_2009.mdb";
         this.AccessDataSource2.DataFile=Server.MapPath(".")+"/CMSC691_2009.mdb";
    }
}
