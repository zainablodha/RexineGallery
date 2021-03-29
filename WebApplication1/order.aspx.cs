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
        SqlConnection con;
        String cid;
        String bid;
        String OStat;
        String Payy;

        protected void Page_Load(object sender, EventArgs e)
        {

            
            tott = Session["price"].ToString();
            tot.Text = " Your Total is ₹ " + tott;
            cid = Session["Cid"].ToString();
            bid = Session["Bid"].ToString();
           
        }

        protected void Cd_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cod.aspx");
        }

        protected void Pay_Click(object sender, EventArgs e)
        {
            Payy = "Card Payment (Done)";
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            String Stat = "Placed";
            Convert.ToInt32(cid);
            Convert.ToInt32(bid);
            String cmd = "Update Orderr set OrderStatus=@OStat where CustId=@cid and BbID=@bid";
            SqlCommand comm = new SqlCommand(cmd, con);
            comm.Parameters.AddWithValue("@cid", cid);
            comm.Parameters.AddWithValue("@bid", bid);
            comm.Parameters.AddWithValue("@OStat", Stat);
            comm.ExecuteNonQuery();
            string cmdd = "update Orderr set Payment=@Pay where CustId=@CID and BbID=@BID and OrderStatus=@Stat";
            SqlCommand comd = new SqlCommand(cmdd, con);
            comd.Parameters.AddWithValue("@CID", cid);
            comd.Parameters.AddWithValue("@BID", bid);
            comd.Parameters.AddWithValue("@Pay", Payy);
            comd.Parameters.AddWithValue("@Stat", Stat);
            comd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Successful.aspx");
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            string Stats = "Not Placed";
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            Convert.ToInt32(cid);
            Convert.ToInt32(bid);
            String cmd = "delete from Orderr where CustId=@cid and BbID=@bid and OrderStatus=@Orstat";
            SqlCommand comm = new SqlCommand(cmd, con);
            comm.Parameters.AddWithValue("@cid", cid);
            comm.Parameters.AddWithValue("@bid", bid);
            comm.Parameters.AddWithValue("@Orstat", Stats);
            comm.ExecuteNonQuery();
            con.Close();
            Response.Redirect("BeanBagH.aspx");

        }
    }
}