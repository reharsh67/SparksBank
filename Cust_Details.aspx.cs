using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SparksBank
{
    public partial class Cust_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                const string strcon = "Data Source=SQL5103.site4now.net,1433;Initial Catalog=db_a78c7e_sparksdatabase;User Id=db_a78c7e_sparksdatabase_admin;Password=ABCD@123";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(" select * from customer;", con);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                DataTable dt = new DataTable { TableName = "MyTable" };
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                dt.Load(dr);
                GridView1.DataSource = null;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception E)
            {
                throw E;
            }
        }
        protected void My_Row_Command(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Respond")
            {
                int rowindex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[rowindex];
                int CounId = int.Parse(row.Cells[0].Text);
                Session["C_id"] = CounId;
                Response.Redirect("Full_Details.aspx");
               
            }

        }
    }
}