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
    public partial class Full_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                const string strcon = "Data Source=DESKTOP-40VMRJT\\SQLEXPRESS;Initial Catalog=SparksDatabase;Integrated Security=True;";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(" select * from customer where customer_id = " + int.Parse(Session["C_id"].ToString()) + ";", con);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                DataTable dt = new DataTable { TableName = "MyTable" };
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                dt.Load(dr);
                con.Close();
                name.Text = dt.Rows[0]["cname"].ToString();
                phone.Text = dt.Rows[0]["mobile"].ToString();
                ID.Text = dt.Rows[0]["customer_id"].ToString();
                State.Text = dt.Rows[0]["astatus"].ToString();
                bal.Text = dt.Rows[0]["balance"].ToString();
                con = new SqlConnection(strcon);
                cmd = new SqlCommand(" select count(*) from tr_transaction where sender = " + int.Parse(Session["C_id"].ToString()) + "Or recevier =" + int.Parse(Session["C_id"].ToString()) + ";", con);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                object var = cmd.ExecuteScalar();
                Tr_count.Text = Convert.ToString(var);
                con.Close();
                con = new SqlConnection(strcon);
                cmd = new SqlCommand(" select top 1 time_date from tr_transaction where sender = " + int.Parse(Session["C_id"].ToString()) + " OR recevier = " + int.Parse(Session["C_id"].ToString()) + ";", con);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                var = cmd.ExecuteScalar();
                last_act.Text = Convert.ToString(var);
                con.Close();
            }
            catch(Exception E)
            {
                throw E;
            }
            try
            {
                const string strcon = "Data Source=DESKTOP-40VMRJT\\SQLEXPRESS;Initial Catalog=SparksDatabase;Integrated Security=True;";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(" select * from tr_transaction where sender = " + int.Parse(Session["C_id"].ToString()) + "Or recevier =" + int.Parse(Session["C_id"].ToString()) + " ;", con);
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
    }
}