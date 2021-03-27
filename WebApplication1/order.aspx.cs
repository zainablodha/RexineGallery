using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class order : System.Web.UI.Page
    {
        string tott;
        string cust;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            tott = Session["price"].ToString();
            tot.Text = " Your Total is ₹ " + tott;
        }

        protected void Ccard_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("order.aspx");
        }

        protected void Cd_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cod.aspx");
        }
    }
}