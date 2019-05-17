using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using FF.User;


namespace FF
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        Random random = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            TextBox2.Attributes["value"] = TextBox2.Text;

            if (!IsPostBack)
            {

                Label2.Text = random.Next(1000, 9999).ToString();
            }
            


        }




        protected void Button1_Click1(object sender, EventArgs e)
        {
            string strSql = "select * from [User] where Uname='" + TextBox1.Text + "'and Upwd='" + TextBox2.Text + "'";

            User.User user = new User.User(strSql);



            //string conStr = "Data Source=.;Initial Catalog =manageT;uid=sa;pwd=sa;";
            //SqlConnection conn = new SqlConnection(conStr);
            //SqlCommand sqlCommand = new SqlCommand();
            //sqlCommand.Connection = conn;

            //string strSql = "select * from [User] where Uname='" + TextBox1.Text + "'and Upwd='" + TextBox2.Text + "'";

            //SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(strSql, conn);
            //DataSet ds = new DataSet();
            //int count = sqlDataAdapter.Fill(ds, "user");

            if (user.count > 0)
            {
                

                if (TextBox3.Text.Trim()==Label2.Text.Trim())
                {

                    Label3.Text = "";

                    user.UserId = TextBox1.Text;
                    user.UserPwd = TextBox2.Text;
                    Session["User"] = user;

                    //Session["Uname"] = TextBox1.Text;
                    //Session["Upwd"] = TextBox2.Text;

                    HttpCookie cookie1 = new HttpCookie("cookie1");
                    cookie1.Value = TextBox2.Text;
                    cookie1.Expires = DateTime.Now.AddDays(5);

                    Response.AppendCookie(cookie1);
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Label3.Text = "验证码错误";
                }

                

            }

            if (user.count > 0)
            {
                TextBox2.Text = user.ds.Tables["user"].Rows[0]["Upwd"].ToString();
            }
            else
            {
                Label1.Text = "用户登录失败，请检查用户名或密码是否错误";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Random random = new Random();
            Label2.Text = random.Next(1000,9999).ToString();
        }
    }
}