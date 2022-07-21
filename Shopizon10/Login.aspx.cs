using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Shopizon10
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=GEN-1\PATRICKSSERVER;Initial Catalog=Shopizon;Integrated Security=True"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM Login WHERE username=@username AND password=@Password";
                SqlCommand cmd = new SqlCommand(query, sqlCon);
                cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count != 0)
                {
                    Session["username"] = TextBox1.Text.Trim();
                    Response.Redirect("Default.aspx");
                }
                else { Response.Write("Incorrect data"); }
            }
        }
    }
}