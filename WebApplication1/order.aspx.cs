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
        String Cid;
        String Bid;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            tott = Session["price"].ToString();
            tot.Text = " Your Total is ₹ " + tott;
            Cid = Session["Cid"].ToString();
            Bid = Session["Bid"].ToString();
        }

        protected void Cd_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cod.aspx");
        }

        protected void Pay_Click(object sender, EventArgs e)
        {

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            String Stat = "Placed";
            Convert.ToInt32(Cid);
            Convert.ToInt32(Bid);
            String cmd = "Update Orderr set OrderStatus=@OStat where CustId=@cid and BbID=@bid";
            SqlCommand comm = new SqlCommand(cmd, con);
            comm.Parameters.AddWithValue("@cid", Cid);
            comm.Parameters.AddWithValue("@bid", Bid);
            comm.Parameters.AddWithValue("@OStat", Stat);
            comm.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Successful.aspx");
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            string Stats = "Not Placed";
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            Convert.ToInt32(Cid);
            Convert.ToInt32(Bid);
            String cmd = "delete from Orderr where CustId=@cid and BbID=@bid and OrderStatus=@Orstat";
            SqlCommand comm = new SqlCommand(cmd, con);
            comm.Parameters.AddWithValue("@cid", Cid);
            comm.Parameters.AddWithValue("@bid", Bid);
            comm.Parameters.AddWithValue("@Orstat", Stats);
            comm.ExecuteNonQuery();
            con.Close();
            Response.Redirect("BeanBagH.aspx");

        }
    }
}