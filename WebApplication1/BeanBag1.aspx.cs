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
    public partial class BeanBag1 : System.Web.UI.Page
    {
        protected bool isNotEmpty(String value)
        {
            return value != null && value != "";
        }

        String BbName = "Alpha Bean";
        
        String BbPrice ;
        String BbBeans = "";
        String BbSize = "";
        String Quantity = "";
        SqlConnection con;
        SqlConnection conn;
        SqlConnection connn;
        String ImageUrl;
        int BbP;
        int quantityy;
        SqlConnection ccon;
        string Email;
        String CId;
        String BId;

        protected void createRequest(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            conn.Open();
            BbBeans = BEANS.SelectedItem.Value.ToString();
            BbSize = SIZE.SelectedValue;
            SqlCommand comm = new SqlCommand("select * from Beanbag where BbSize=@BbS and BbBeans=@BbB and BbName=BbName", conn);
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
            BbBeans= BEANS.SelectedItem.Value.ToString();
            BbSize = SIZE.SelectedValue;
            //string str = "select * from BeanBag where  BbSize = '" + BbSize + "'" ;
            SqlCommand com = new SqlCommand("select * from Beanbag where BbSize=@BbS and BbBeans=@BbB and BbName=@BbName", con);
            com.Parameters.AddWithValue("@BbS", BbSize);
            com.Parameters.AddWithValue("@BbB", BbBeans);
            com.Parameters.AddWithValue("@BbName", BbName);
            SqlDataReader reader = com.ExecuteReader();

            reader.Read();
            Bbnamee.Text = BbName;
            Bbpricee.Text = reader["BbPrice"].ToString();
            Bbrexx.Text = reader["BbRex"].ToString();
            Bbtypee.Text = reader["BbType"].ToString();
            Session["price"] = Bbpricee.Text;
            Session["Img"] = img.ImageUrl;
            
            reader.Close();
            con.Close();
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BeanBag16.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BeanBag17.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BeanBag18.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BeanBag19.aspx");
        }
            
        protected void Button1_Click(object sender, EventArgs e)
        {
            Email = Session["CustEmail"].ToString();
            
            if (Session["CustEmail"] == null) { 
               
            Response.Redirect("Login.aspx");
            }
            else
            {
               /* ccon = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
                ccon.Open();
                String cmdd = "select CustId from Customer where CustEmail= '" + Email + "'";
                SqlCommand com = new SqlCommand(cmdd, ccon);
                SqlDataReader reader = com.ExecuteReader();
                reader.Read();
                CId= reader["CustId"].ToString();
                reader.Close();
                ccon.Close();
                SqlCommand cmd = new SqlCommand("select BbID from Beanbag where BbSize=@BbS and BbBeans=@BbB and BbName=@BbName", con);
                com.Parameters.AddWithValue("@BbS", BbSize);
                com.Parameters.AddWithValue("@BbB", BbBeans);
                com.Parameters.AddWithValue("@BbName", BbName);
                ccon.Open();
                SqlDataReader readerr = cmd.ExecuteReader();
                readerr.Read();
                BId= reader["BbID"].ToString();
                readerr.Close();
                //String cmmd = "insert into Orderr values(@)";*/

                Response.Redirect("order.aspx");

            }
        }
    }
}