<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FF.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 83px;
        }
        .auto-style2 {
            width: 100%;
            height: 246px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            text-align: right;
            width: 134px;
        }
        .auto-style9 {
            width: 573px;
        }
        .auto-style10 {
            width: 134px;
        }
        .auto-style12 {
            width: 128px;
        }
        .auto-style15 {
            width: 217px;
        }
        
    </style>
</head>
<body style="background-color:chartreuse">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <br />
                        <span class="auto-style4">用户注册界面</span><br class="auto-style4" />
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style5" ForeColor="Red"></asp:Label>
                        </td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">姓名：</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtName" runat="server" ToolTip="姓名"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="*请输入用户名" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td rowspan="7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">密码：</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtPwd" runat="server" ToolTip="密码" TextMode="Password"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="*请输入3~6位密码" ForeColor="Red" ValidationExpression="^[\w]{3,6}$"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入密码" ForeColor="Red" ControlToValidate="txtPwd"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">确认密码：</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtPwd2" runat="server" ToolTip="确认密码" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPwd2" Display="Dynamic" ErrorMessage="*两次密码不一致!" ForeColor="Red" ControlToCompare="txtPwd"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">预设问题：</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtProblem" runat="server" ToolTip="预设问题"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">问题答案：</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtAnswer" runat="server" ToolTip="问题答案"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="btnReg" runat="server" Text="注册" OnClick="btnReg_Click" />
&nbsp;
                        <asp:Button ID="btnClear" runat="server" Text="清空" OnClick="btnClear_Click" />
&nbsp;
                        </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">
                        已有账户，请<a style=" color: #FF0000" href="login.aspx">登录</a></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
