<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FF.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        td{
            
        }
        
        .auto-style1 {
            width: 935px;
            height: 206px;
        }
        .auto-style5 {
            width: 467px;
        }
        
        .auto-style6 {
            font-size: xx-large;
        }
        
        .auto-style7 {
            font-size: large;
        }
        
        .auto-style9 {
            width: 467px;
            height: 29px;
        }
        
        .auto-style10 {
            width: 477px;
        }
        .auto-style11 {
            width: 477px;
            height: 29px;
        }
        .auto-style12 {
            width: 477px;
            height: 24px;
        }
        .auto-style13 {
            width: 467px;
            height: 24px;
        }
        
    </style>
    <script src="Scripts/Reflash.js"> </script>
    <script>
        function fGetCode() {
            document.getElementById("Label2").src = "/login.aspx?" + Math.random();
        }
    </script>

</head>
<body style="background-color: #00FF00">
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td style="text-align:center" class="auto-style10">&nbsp;</td>
                    <td style="text-align:left" class="auto-style6">登录界面</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style7" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align:right">用户名：</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server" ToolTip="用户名"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*请输入用户名" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" style="text-align:right">密码：</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ToolTip="密码"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*请输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*请输入3到6位密码" ForeColor="Red" ValidationExpression="^[\w]{3,6}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="text-align:right">验证码：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" ToolTip="验证码"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" BackColor="#FF9966" Font-Bold="True"></asp:Label>
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="刷新" />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*请输入验证码" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click1" />
&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="清空" OnClick="Button2_Click" />
                    &nbsp; <a href="ForgetPwd.aspx" style="background-color:lawngreen; font-size: large; text-decoration: blink; color: #FF0000;">忘记密码</a><asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">还没有账户，请<a style="color:#FF0000;" href="Register.aspx">注册</a></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
