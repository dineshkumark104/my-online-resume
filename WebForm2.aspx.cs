using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace resume
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String data1 = "", data2 = "", data3 = "", data4 = "", data5 = "", data6 = "", data7 = "";
                String connstr = "Server=dineshresume.database.windows.net;Database=resume;User ID=dineshkumark104;Password= Dinesh@9245242808;";
                SqlConnection conn = new SqlConnection(connstr);
                conn.Open();
                SqlCommand cmd = new SqlCommand("select prog_lang,op_sys,datab from dbo.skills;");
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = conn;
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    data1 = reader["prog_lang"].ToString();
                    data2 = reader["op_sys"].ToString();
                    data3 = reader["datab"].ToString();
                }
                conn.Close();
                label1.Text = data1;
                label2.Text = data2;
                label3.Text = data3;
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("select comp_name,post,start_date,end_date from dbo.Prof_exp;");
                cmd2.CommandType = System.Data.CommandType.Text;
                cmd2.Connection = conn;
                SqlDataReader reader2 = cmd2.ExecuteReader();
                while (reader2.Read())
                {
                    data4 = reader2["comp_name"].ToString();
                    data5 = reader2["post"].ToString();
                    data6 = reader2["start_date"].ToString();
                    data7 = reader2["end_date"].ToString();
                }
                conn.Close();
                label4.Text = data4;
                label5.Text = data5;
                label6.Text = data6;
                label7.Text = data7;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/webForm3.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/webForm1.aspx");
        }
    }
}