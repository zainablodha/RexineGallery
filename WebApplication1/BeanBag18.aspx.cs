using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.BeanBag_1
{
    public partial class BeanBag18 : System.Web.UI.Page
    {
        protected bool isNotEmpty(String value)
        {
            return value != null && value != "";
        }

        String BbName = "Alpha Bean";

        String BbPrice;
        String BbBeans = "";
        String BbSize = "";
        String Quantity = "";
        SqlConnection con;
        SqlConnection conn;
        String BbP, quantityy;
        SqlConnection ccon;
        string Email;
        String CId;
        String BId;
        String Amtt;
        String Status;
        String ImageUrl;
        String Payy;

        protected void createRequest(object sender, EventArgs e)
        {
            if (q.Text != null)
            {
                BbP = Bbpricee.Text.Replace("/-", "");
                quantityy = q.Text.ToString();
                String tot = Convert.ToString(Convert.ToInt32(BbP) * Convert.ToInt32(quantityy));
                Bbpricee.Text = tot + "/-";
                Session["price"] = Bbpricee.Text;
            }
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            conn.Open();
            BbBeans = BEANS.SelectedItem.Value.ToString();
            BbSize = SIZE.SelectedValue;
            SqlCommand comm = new SqlCommand("select * from Beanbag where BbSize=@BbS and BbBeans=@BbB and BbName=@BbName", conn);
            comm.Parameters.AddWithValue("@BbS", BbSize);
            comm.Parameters.AddWithValue("@BbB", BbBeans);
            comm.Parameters.AddWithValue("@BbName", BbName);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Read();
            Bbnamee.Text = BbName;
            Bbpricee.Text = reader["BbPrice"].ToString();
            Bbrexx.Text = reader["BbRex"].ToString();
            Bbtypee.Text = reader["BbType"].ToString();
            reader.Close();
            conn.Close();

            if (q.Text != null)
            {
                BbP = Bbpricee.Text.Replace("/-", "");
                quantityy = q.Text.ToString();
                String tot = Convert.ToString(Convert.ToInt32(BbP) * Convert.ToInt32(quantityy));
                Bbpricee.Text = tot + "/-";
                Session["pricee"] = Bbpricee.Text;
            }
            
            Session["Qty"] = q.Text;
        }



        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)

            {
                BEANS.SelectedIndex = 0;
            }

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();

            if (!IsPostBack)

            {

                SIZE.SelectedIndex = 0;

            }

            Quantity = q.Text.ToString();
            BbBeans = BEANS.SelectedItem.Value.ToString();
            BbSize = SIZE.SelectedValue;
            //string str = "select * from BeanBag where  BbSize = '" + BbSize + "'" ;
            SqlCommand com = new SqlCommand("select * from Beanbag where BbSize=@BbS and BbBeans=@BbB and BbName=BbName", con);
            com.Parameters.AddWithValue("@BbS", BbSize);
            com.Parameters.AddWithValue("@BbB", BbBeans);
            com.Parameters.AddWithValue("@BbName", BbName);
            SqlDataReader reader = com.ExecuteReader();
            Bbnamee.Text = BbName;
            reader.Read();
            Bbpricee.Text = reader["BbPrice"].ToString();
            Bbrexx.Text = reader["BbRex"].ToString();
            Bbtypee.Text = reader["BbType"].ToString();
            BId = reader["BbID"].ToString();
            Session["price"] = Bbpricee.Text;
            Session["Img"] = img.ImageUrl;
            Session["Bid"] = BId;
            reader.Close();
            con.Close();

        }
        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BeanBag1.aspx");
        }



        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BeanBag17.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BeanBag19.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BeanBag16.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            if (Session["CustEmail"] == null)
            {

                Response.Redirect("Login.aspx");
            }
            else
            {
                Email = Session["CustEmail"].ToString();
                ccon = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
                ccon.Open();
                String cmdd = "select CustId from Customer where CustEmail= '" + Email + "'";
                SqlCommand com = new SqlCommand(cmdd, ccon);
                SqlDataReader reader = com.ExecuteReader();
                reader.Read();
                CId = reader["CustId"].ToString();
                Session["Cid"] = CId;
                reader.Close();
                ccon.Close();
                Amtt = Bbpricee.Text;
                Convert.ToInt32(CId);
                Convert.ToInt32(BId);
                String cmmd = "insert into Orderr values(@CustID, @BbID, @Amt, @Stat,@payy)";
                Status = "Not Placed";
                Payy = "Null";
                ccon.Open();
                SqlCommand comm = new SqlCommand(cmmd, ccon);
                comm.Parameters.AddWithValue("@CustID", CId);
                comm.Parameters.AddWithValue("@BbID", BId);
                comm.Parameters.AddWithValue("@Amt", Amtt);
                comm.Parameters.AddWithValue("@Stat", Status);
                comm.Parameters.AddWithValue("@pay", Payy);
                comm.ExecuteNonQuery();
                ccon.Close();
                Response.Redirect("order.aspx");

            }
        }
        
    }
}
