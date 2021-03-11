using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            string checkUser = "select count(*) from Admin where AdminName ='" + TextUser.Text + "'";
            SqlCommand comm = new SqlCommand(checkUser, con);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                string checkPassQuery = "select AdminPass from Admin where AdminName ='" + TextUser.Text + "'";
                SqlCommand passwordComm = new SqlCommand(checkPassQuery, con);
                string password = passwordComm.ExecuteScalar().ToString().Replace(" ", "");
                string checkNameQuery = "select AdminName from Admin where AdminName ='" + TextUser.Text + "'";
                SqlCommand nComm = new SqlCommand(checkNameQuery, con);
                var name = nComm.ExecuteScalar().ToString();

                if (password == TextPass.Text)
                {
                    Session["New"] = "  " + name + "<br/>";
                    Response.Redirect("ManageCustomer.aspx");
                }
                else
                {
                    PassIncorrect.Text = "Password is incorrect!";
                }

            }
            else
            {
                UserIncorrect.Text = "Username is incorrect!";
            }
        }
    }
}