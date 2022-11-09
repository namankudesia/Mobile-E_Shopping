using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mobile_EShopping
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MobileDatabase.mdf;Integrated Security=True");
            string sql;
            sql = "insert into login values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
             SqlCommand cmd = new SqlCommand(sql, cn);
            cn.Open();
          
            try
            {
                cmd.ExecuteNonQuery();
                lblerr.Text = "You are Registered Successfully";
            }
            catch (Exception ex)
            {
                lblerr.Text = ex.Message;

            }

            cn.Close();
               

            }
       








                
        
    }
}