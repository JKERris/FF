using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace FF
{
    public partial class Cknum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strSql = "select * from [Fred] where Fnum='" + TextBox1.Text + "'";
            string comTxt = "select * from [Fred] where Fnum=@Fnum";
            FF.User.User user = new User.User(strSql,comTxt);

            user.command.Parameters.AddWithValue("@Fnum", TextBox1.Text);

            
            

            //SqlDataAdapter da1 = new SqlDataAdapter();
            user.dataAdapter.SelectCommand = user.command;
            //DataSet ds = new DataSet();

            try
            {
                user.conn.Open();
                user.dataAdapter.Fill(user.ds, "Fred");
                GridView1.DataSource = user.ds.Tables["Fred"].DefaultView;
                GridView1.DataBind();
                Label1.Text = "查询成功";
            }
            catch
            {
                Label1.Text = "不符合输入条件，或者没有该信息";
            }
            finally
            {
                user.command = null;
                user.conn.Close();
                user.conn = null;
            }



            if (user.count > 0)
            {
                TextBox1.Text = user.ds.Tables["Fred"].Rows[0]["Fnum"].ToString();
                Label1.Text = "";

            }
            else
            {
                Label1.Text = "没有该朋友的电话号码信息，请添加";
            }

        }
    }
}
