using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Dynamic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

            protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
                con.Open();
                string InsertQuery = "insert into Customer values (@Name,@email,@pno,@password,@addr)";
                SqlCommand comm = new SqlCommand(InsertQuery, con);
                comm.Parameters.AddWithValue("@Name", TextName.Text);
                comm.Parameters.AddWithValue("@email", TextEmail.Text);
                comm.Parameters.AddWithValue("@pno", TextPno.Text);
                comm.Parameters.AddWithValue("@password", TextPass.Text);
                comm.Parameters.AddWithValue("@addr", TextAddr.Text);
                comm.ExecuteNonQuery();
                con.Close();

                Response.Redirect("Login.aspx");

            }
            
                catch (Exception exp)
            {
                EmailExists.Text = "Email ID already exists " ;
                EmailExists.Visible = true;
            }
        }
    }
}