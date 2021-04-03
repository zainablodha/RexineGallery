using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustEmail"] == null)
            {
                instatus.InnerText = "Login";
                instatus.HRef = "Login.aspx";
            }
            else
            {
                instatus.InnerText = "Logout";
                instatus.HRef = "logout.aspx";
                
            }


        }
        /*protected void outstatus_click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Remove("TextEmail");
            Session.Remove("TextPass");
        }*/


    }
}