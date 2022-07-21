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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=GEN-1\PATRICKSSERVER;Initial Catalog=Shopizon;Integrated Security=True"))
            {
                GridViewRow row = GridView1.SelectedRow;
                //row.Cells[1].Text = "@ProdName";
                //row.Cells[2].Text = "@ProdDescription";
                //row.Cells[3].Text = "@Price";
                //row.Cells[4].Text = "@catid";
                sqlCon.Open();
                string query = "INSERT INTO ShoppingCart Values(catid=@catid, ProdName=@ProdName, ProdDescription=@ProdDescription, Price=@Price)";
                SqlCommand cmd = new SqlCommand(query, sqlCon);
                cmd.Parameters.AddWithValue("@ProdName", row.Cells[1].Text);
                cmd.Parameters.AddWithValue("@ProdDescription", row.Cells[2].Text);
                cmd.Parameters.AddWithValue("@Price", row.Cells[3].Text);
                cmd.Parameters.AddWithValue("@catid", row.Cells[4].Text);
                sqlCon.Close();
            }
        }
    }
}