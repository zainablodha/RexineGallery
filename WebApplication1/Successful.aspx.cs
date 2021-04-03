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
    public partial class Successful : System.Web.UI.Page
    {
        SqlConnection con;
        String orid;
        String cid;
        String bid;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            cid = Session["Cid"].ToString();
            bid = Session["Bid"].ToString();
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            
            String cmd = "Select * from Orderr where CustId=@CID and BbID=@Bid";
            SqlCommand comm = new SqlCommand(cmd, con);
            comm.Parameters.AddWithValue("@CID", cid);
            comm.Parameters.AddWithValue("@Bid", bid);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Read();
            orid = reader["OrderID"].ToString();
            Oid.Text = "Your Order Id is : " + orid;
            reader.Close();

        }
    }
}