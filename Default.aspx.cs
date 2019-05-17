using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FF.User;

namespace FF
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User.User user = new User.User();
            user =(User.User)Session["User"];
            Label1.Text = user.UserId;
            Label2.Text = DateTime.Now.ToString();
        }
    }
}