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
    public partial class Transact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) 
            {
            try
            {
                    const string strcon = "Data Source=SQL5103.site4now.net,1433;Initial Catalog=db_a78c7e_sparksdatabase;User Id=db_a78c7e_sparksdatabase_admin;Password=ABCD@123";
                    SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(" select customer_id  from customer;", con);
                DataSet ds = new DataSet();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                custIdSender.DataTextField = ds.Tables[0].Columns["customer_id"].ToString(); // text field name of table dispalyed in dropdown       
                custIdSender.DataValueField = ds.Tables[0].Columns["customer_id"].ToString();
                custIdSender.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
                custIdSender.DataBind();
                con.Close();

                cmd = new SqlCommand(" select customer_id  from customer;", con);
                cmd.CommandType = CommandType.Text;
                ds = new DataSet();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                custIdReciver.DataTextField = ds.Tables[0].Columns["customer_id"].ToString(); // text field name of table dispalyed in dropdown       
                custIdReciver.DataValueField = ds.Tables[0].Columns["customer_id"].ToString();
                custIdReciver.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
                custIdReciver.DataBind();
                con.Close();
            }
            catch (Exception E)
            {
                throw E;
            }
            }
        }

        protected void Trans_Click(object sender, EventArgs e)
        {
            try
            {
                long val = long.Parse(amt.Text);
                string c1 = custIdSender.SelectedItem.Text;
                string c2 = custIdReciver.SelectedItem.Text;
                const string strcon = "Data Source=SQL5103.site4now.net,1433;Initial Catalog=db_a78c7e_sparksdatabase;User Id=db_a78c7e_sparksdatabase_admin;Password=ABCD@123";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(" select balance  from customer where customer_id = " + int.Parse(c1) + ";", con);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                object var = cmd.ExecuteScalar();
                String c1_bal = Convert.ToString(var);
                con.Close();
                cmd = new SqlCommand(" select balance  from customer where customer_id = " + int.Parse(c1) + ";", con);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                var = cmd.ExecuteScalar();
                String c2_bal = Convert.ToString(var);
                con.Close();
                if (long.Parse(c1_bal) < val)
                {
                    alertMsg.ForeColor = System.Drawing.Color.Red;
                    alertMsg.Text = "Insufficent Funds";
                }
                else
                {
                    c1_bal = (long.Parse(c1_bal) - val).ToString();
                    c2_bal = (long.Parse(c2_bal) + val).ToString();

                    con = new SqlConnection(strcon);
                    cmd = new SqlCommand("update customer set balance= " + long.Parse(c1_bal) + " where customer_id = " + int.Parse(c1) + ";", con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    var = cmd.ExecuteNonQuery();
                    con.Close();
                    con = new SqlConnection(strcon);
                    cmd = new SqlCommand("update customer set balance= " + long.Parse(c2_bal) + " where customer_id = " + int.Parse(c2) + ";", con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    var = cmd.ExecuteNonQuery();
                    con.Close();
                    con = new SqlConnection(strcon);
                    cmd = new SqlCommand("insert into tr_transaction (sender,recevier,amount,time_date,tr_status) values (" + int.Parse(c1) + "," + int.Parse(c2) + "," + val + ",CURRENT_TIMESTAMP,'Sucess');", con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    var = cmd.ExecuteNonQuery();
                    con.Close();
                    alertMsg.ForeColor = System.Drawing.Color.Green;
                    alertMsg.Text = "Transaction Sucess";
                }
            }catch(Exception E)
            {
                throw E;
            }
        }
    }
}