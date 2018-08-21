using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace resume
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String data1 = "", data2 = "", data3 = "", data4 = "", data5 = "", data6 = "";
                String connstr = "Server=dineshresume.database.windows.net;Database=resume;User ID=dineshkumark104;Password= Dinesh@9245242808;";
                SqlConnection conn = new SqlConnection(connstr);
                conn.Open();
                SqlCommand cmd = new SqlCommand("select degree,univ,grad_date from dbo.edu where grad_date='May 2018';");
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = conn;
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    data1 = reader["degree"].ToString();
                    data2 = reader["univ"].ToString();
                    data3 = reader["grad_date"].ToString();
                }
                conn.Close();
                label1.Text = data1;
                label2.Text = data2;
                label3.Text = data3;
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("select degree,univ,grad_date from dbo.edu where grad_date='June 2016';");
                cmd2.CommandType = System.Data.CommandType.Text;
                cmd2.Connection = conn;
                SqlDataReader reader2 = cmd2.ExecuteReader();
                while (reader2.Read())
                {
                    data4 = reader2["degree"].ToString();
                    data5 = reader2["univ"].ToString();
                    data6 = reader2["grad_date"].ToString();
               
                }
                conn.Close();
                label4.Text = data4;
                label5.Text = data5;
                label6.Text = data6;
     
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm2.aspx");
        }
    }
}