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
    public partial class ForgetPwd : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtProblem.Text = "";
            txtAnswer.Text = "";
            labCode.Text = "";
            labMessage.Text = "";
            labAnswer.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                string strSql = "select * from [User] where Uname='"+txtName.Text+"'";
                
                User.User user = new User.User(strSql);

                if (user.count > 0)
                {

                //Response.Write(txtAnswer.Text.Trim() == user.ds.Tables["User"].Rows[0]["Uanswer"].ToString().Trim());
                
                //加入trim（）去首尾空格再进行文本比较时，两者文本相同才会返回true，否则返回都为false
                    if (txtAnswer.Text.Trim()==user.ds.Tables["User"].Rows[0]["Uanswer"].ToString().Trim())
                    {

                    labCode.Text = user.ds.Tables["User"].Rows[0]["Upwd"].ToString();
                    labAnswer.Text = " ";
                    }
                    else


                    labAnswer.Text = "答案错误";
                    //labAnswer.Text = user.ds.Tables["User"].Rows[0]["Uanswer"].ToString();





            }
                else
                {
                    labMessage.Text = "没有这个用户";

                }


            //string strCon = "Data Source=.;Initial Catalog =manageT;uid=sa;pwd=sa";
            //SqlConnection sqlconn = new SqlConnection(strCon);
            //SqlCommand sqlcommand = new SqlCommand();
            //sqlcommand.Connection = sqlconn;

            //string strsql = "select * from [User] where Uname='" + txtName.Text + "'";
            //SqlDataAdapter da = new SqlDataAdapter(strsql, sqlconn);
            //DataSet ds = new DataSet();
            //int count = da.Fill(ds,"User");

            //if (count > 0)
            //{

            //    if (txtAnswer.Text != ds.Tables["User"].Rows[0]["Uanswer"].ToString())
            //    {
            //        labAnswer.Text = "提示问题答案出错，请再次输入答案..";
            //    }
            //    else
            //    {

            //        labCode.Text = ds.Tables["User"].Rows[0]["Upwd"].ToString();
            //        labAnswer.Text = " ";
            //    }
            //}
            //else
            //{
            //    labName.Text = "没有这个用户";

            //}



        }

       

        protected void txtAnswer_TextChanged(object sender, EventArgs e)
        {

            //string strSql = "select * from [User] where Uname='" + txtName.Text + "'";

            //User.User user = new User.User(strSql);

            //if (user.count>0)
            //{
            //    if (txtAnswer.Text==user.ds.Tables["User"].Rows[0]["Uanswer"].ToString())
            //    {
            //        labCode.Text = user.ds.Tables["User"].Rows[0]["Pwd"].ToString();
            //    }
            //}
        }
    }
}