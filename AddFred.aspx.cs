//添加好友信息
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FF
{
    public partial class AddFred : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string strSql = "select * from [Fred] where Fname='"+txtName.Text+"'";
            string comTxt = "Insert Into [Fred] (Fname,Fnum,Femail,Fsex)values(@Fname,@Fnum,@Femail,@Fsex)";

            FF.User.User user = new User.User(strSql,comTxt);

            if (user.count>0)
            {
                labMessage.Text = "好友已存在";
            }
            else
            {
                user.command.Parameters.AddWithValue("@Fname",txtName.Text);
                user.command.Parameters.AddWithValue("@Fnum",txtNum.Text);
                user.command.Parameters.AddWithValue("@Femail",txtEmail.Text);
                user.command.Parameters.AddWithValue("@Fsex",CheckBoxList1.Text);

                try
                {
                    user.conn.Open();
                    user.command.ExecuteNonQuery();
                    labMessage.Text = "添加成功";
                }
                catch (Exception ex)
                {

                    labMessage.Text=ex.Message;
                }
                finally
                {
                    user.command = null;
                    user.conn.Close();
                    user.conn = null;
                }
            }
        }
        
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtNum.Text = "";
            txtEmail.Text = "";
            CheckBoxList1.Text = "";
        }
    }
}