using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Rexines : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Montano.aspx");
        }

        protected void ImageAvio_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Avio.aspx");
        }

        protected void ImageVenus_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Venus.aspx");
        }

        protected void ImageVolcano_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Volcano.aspx");
        }

        protected void ImageLeather_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Leather.aspx");
        }
    }
}