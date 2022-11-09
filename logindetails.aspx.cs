using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mobile_EShopping
{
    public partial class logindetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MobileDatabase.mdf;Integrated Security=True");
            string sql;
            sql = "select * from login where login_id='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, cn);
            cn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                lblerr.Text = "U are Welcome Valid User";
                Response.Redirect("model.aspx");
            }
            else
            {
                lblerr.Text = "Invalid User and Password, Please choose New Signup if do not have User id";
                TextBox1.Text = "";
                TextBox2.Text = "";

            }
            cn.Close();
            }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
    }
