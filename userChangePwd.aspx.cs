using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FF
{
    public partial class userChangePwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strSql = "select * from [User] where Upwd ='" + TxtBox1.Text + "'and Uname='" + TxtBox4.Text + "'";
            string comTxt = "update [User] set Upwd=@Upwd where Uname=@Uname";
            FF.User.User user = new User.User(strSql,comTxt);

            if (user.count > 0)
            {
                TxtBox1.Text = user.ds.Tables["User"].Rows[0]["Upwd"].ToString();
                Label1.Text = "";
                
                user.command.Parameters.AddWithValue("@Uname", TxtBox4.Text);
                user.command.Parameters.AddWithValue("@Upwd", TxtBox2.Text);
                try
                {
                    user.conn.Open();
                    user.command.ExecuteNonQuery();
                    Label2.Text = "已更改该用户的密码！";
                    Label3.Text = "";
                    Label1.Text = "";
                }
                catch (Exception ex)
                {
                    Label2.Text = "错误原因：" + ex.Message;
                }
                finally
                {
                    user.command = null;
                    user.conn.Close();
                    user.conn = null;
                }
            }
            else
            {
                Label1.Text = "原密码输入不正确";
            }
            if (user.count > 0)
            {
               TxtBox4.Text = user.ds.Tables["User"].Rows[0]["Uname"].ToString();
                TxtBox1.Text = user.ds.Tables["User"].Rows[0]["Upwd"].ToString();
                Label3.Text = " ";
                Label1.Text = "";
            }
            else
            {

                Label1.Text = "用户名与密码不匹配";
                Label2.Text = "用户名与密码不匹配,请确认您的密码与用户名一致";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            TxtBox4.Text = "";
            TxtBox1.Text = "";
            TxtBox2.Text = "";
            TxtBox3.Text = "";
        }
    }
}