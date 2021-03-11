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
    public partial class ResetPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            string str1 = "select count(*) from Customer where CustEmail ='" + TextEmail.Text + "'AND CustPno= '" + TextPno.Text +"'";
            SqlCommand cmd = new SqlCommand(str1, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                string str = "update Customer set CustPass='" + TextPass.Text + "'where CustEmail= '" + TextEmail.Text + "'";
                SqlCommand cmd1 = new SqlCommand(str, con);
                cmd1.ExecuteNonQuery();
                ResPass.Text = "Your Password has been changed successfully ";
                con.Close();
            }
            else
            {
                ResPass.Text = " Your Email ID or Mobile Number is invalid ";
            }

        }
    }
    }
