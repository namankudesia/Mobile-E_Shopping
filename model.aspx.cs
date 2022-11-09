using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mobile_EShopping
{
    public partial class model : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Response.Cookies["img"].Value = "~/model_images/" + GridView1.SelectedRow.Cells[0].Text.ToString() + ".jpg";
           
            Image3.ImageUrl = Request.Cookies["img"].Value.ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.html");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("compare.aspx");
        }
    }
}