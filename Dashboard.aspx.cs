using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SparksBank
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                const string strcon = "Data Source=DESKTOP-40VMRJT\\SQLEXPRESS;Initial Catalog=SparksDatabase;Integrated Security=True;";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(" select sum(balance) as Total from customer;", con);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                object var = cmd.ExecuteScalar();
                totalHoldings.Text = Convert.ToString(var);
                con.Close();
                cmd = new SqlCommand(" select count(*) as Total from customer;", con);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                var = cmd.ExecuteScalar();
                totalCustomers.Text = Convert.ToString(var);
                con.Close();
                cmd = new SqlCommand(" select count(time_date) as Total from tr_transaction where time_date >= dateadd(hh, -1, getdate()) ;", con);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                 var = cmd.ExecuteScalar();
                recentTransactions.Text = Convert.ToString(var);
                con.Close();
            }
            catch(Exception E)
            {
                throw E;
            }
        }
    }
}