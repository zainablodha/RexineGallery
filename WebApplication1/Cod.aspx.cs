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
    public partial class Cod : System.Web.UI.Page
    {
        String cust;
        string tott;

        protected void Page_Load(object sender, EventArgs e)
        {
            tott = Session["price"].ToString();
            tot.Text = " Your Total is ₹ " + tott;
            cust = Session["CustEmail"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            string cmd = "select CustAddr from Customer where CustEmail= '" + cust + "'";
            SqlCommand comm = new SqlCommand(cmd, con);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Read();
            addr.Text = reader["CustAddr"].ToString();
            reader.Close();
            con.Close();
        }
        protected void Ccard_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("order.aspx");
        }
    }
    }
