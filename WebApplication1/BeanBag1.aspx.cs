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
        String BbType = "";
        String BbRex = "";
        String BbPrice = "";
        String BbBeans = "";
        String BbSize = "";
        SqlConnection con;
        
        protected String constructQuery()
        {
            var query = "SELECT * FROM BEANBAG WHERE ";
            if (isNotEmpty(BbName))
            {
                query = query + "BbName = '" + BbName + "'";
            }
            if (isNotEmpty(BbType))
            {
                query = query + "BbType = '" + BbType + "'";
            }
            if (isNotEmpty(BbRex))
            {
                query = query + "BbRex = '" + BbRex + "'";
            }
            if (isNotEmpty(BbPrice))
            {
                query = query + "BbPrice = '" + BbPrice + "'";
            }
            if (isNotEmpty(BbBeans))
            {
                query = query + "BbBeans = '" + BbBeans + "'";
            }
            if (isNotEmpty(BbSize))
            {
                query = query + "BbSize = '" + BbSize + "'";
            }
            return query;
        }

        protected void updateValues()
        {
            
            BbBeans = BEANS.SelectedItem.Text;
            BbSize = SIZE.SelectedValue;
        }

        protected void createRequest(object sender, EventArgs e)
        {
            con.Open();
            Errorr.Text = "Executed";
            updateValues();
            var query = constructQuery();
            SqlCommand command = new SqlCommand(query, con);
            SqlDataReader reader = command.ExecuteReader();
            reader.Read();
            Bbnamee.Text = BbName;
            Bbpricee.Text = reader["BbPrice"].ToString();
            Bbrexx.Text = reader["BbRex"].ToString();
            Bbtypee.Text = reader["BbType"].ToString();
            con.Close();
        }

        

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();

            /// Get default values
            BbSize = SIZE.SelectedValue;
            string str = "select * from BeanBag where  BbSize = '" + BbSize + "'";
            SqlCommand com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            reader.Read();
            Bbnamee.Text = reader["BbName"].ToString();
            Bbpricee.Text = reader["BbPrice"].ToString();
            //Errorr.Text = "Executed";
            con.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BeanBag16.aspx");
        }
    }
}