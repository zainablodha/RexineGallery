using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            string checkUser = "select count(*) from Customer where CustEmail ='" + TextEmail.Text + "'";
            SqlCommand comm = new SqlCommand(checkUser, con);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                string checkPassQuery = "select CustPass from Customer where CustEmail ='" + TextEmail.Text + "'";
                SqlCommand passwordComm = new SqlCommand(checkPassQuery, con);
                string password = passwordComm.ExecuteScalar().ToString().Replace(" ", "");
                string checkNameQuery = "select CustName from Customer where CustEmail ='" + TextEmail.Text + "'";
                SqlCommand nComm = new SqlCommand(checkNameQuery, con);
                var name = nComm.ExecuteScalar().ToString();

                if (password == TextPass.Text)

                {
                    Session["CustEmail"] = TextEmail.Text;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    PassIncorrect.Text="Password is incorrect!";
                }

            }
            else
            {
                UserIncorrect.Text="Username is incorrect!";
            }
            this.Button1.Click += new System.EventHandler(this.Button1_Click);
        }
    }
}