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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtPwd.Text = "";
            txtPwd2.Text = "";
            txtProblem.Text = "";
            txtAnswer.Text = "";
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            string strsql = "select * from [user] where uname='" + txtName.Text + "'";
            string comtxt = "insert into [user] (uname,upwd,uproblem,uanswer)values(@uname,@upwd,@uproblem,@uanswer)";

            FF.User.User user = new User.User(strsql, comtxt);

            if (user.count > 0)
            {
                txtName.Text = user.ds.Tables["user"].Rows[0]["uname"].ToString();
                Label2.Text = "该用户已注册";
            }
            else
            {
                try
                {
                    user.command.Parameters.AddWithValue("@uname", txtName.Text);
                    user.command.Parameters.AddWithValue("@upwd", txtPwd.Text);
                    user.command.Parameters.AddWithValue("@uproblem", txtProblem.Text);
                    user.command.Parameters.AddWithValue("@uanswer", txtAnswer.Text);

                    user.conn.Open();
                    user.command.ExecuteNonQuery();
                    Label1.Text = "注册成功！";
                    Session["预留问题"] = txtProblem.Text;
                }
                catch (Exception ex)
                {

                    Label1.Text = "错误原因:" + ex.Message;
                }
                finally
                {
                    user.command = null;
                    user.conn.Close();
                    user.conn = null;
                }





                //string strCon = "Data Source=.;Initial Catalog =manageT;uid=sa;pwd=sa";
                //SqlConnection sqlconn = new SqlConnection(strCon);
                //SqlCommand sqlcommand = new SqlCommand();
                //sqlcommand.Connection = sqlconn;

                //string strsql = "select * from [User] where Uname='" + txtName.Text + "'";
                //SqlDataAdapter da = new SqlDataAdapter(strsql, sqlconn);
                //DataSet ds = new DataSet();
                //int count = da.Fill(ds, "User");

                //if (count > 0)
                //{
                //    txtName.Text = ds.Tables["User"].Rows[0]["Uname"].ToString();
                //    Label2.Text = "该用户已经存在 ";

                //}
                //else
                //{



                //    sqlcommand.CommandText = "insert into User (Uname,Upwd,Uproblem,Uanswer)values(@Uname,@Upwd,@Uproblem,@Uanswer)";

                //    sqlcommand.Parameters.AddWithValue("@Uname", txtName.Text);
                //    sqlcommand.Parameters.AddWithValue("@Upwd", txtPwd.Text);
                //    sqlcommand.Parameters.AddWithValue("@Uproblem", txtProblem.Text);
                //    sqlcommand.Parameters.AddWithValue("@Uanswer", txtAnswer.Text);

                //    try
                //    {
                //        sqlconn.Open();
                //        sqlcommand.ExecuteNonQuery();
                //        Label1.Text = "注册成功";
                //        Session["预留问题"] = txtProblem.Text;
                //    }
                //    catch (Exception ex)
                //    {
                //        Label1.Text = "错误原因" + ex.Message;

                //    }
                //    finally
                //    {
                //        sqlcommand = null;
                //        sqlconn.Close();
                //        sqlconn = null;
                //    }
                //}

            }
        }
    }       
}
