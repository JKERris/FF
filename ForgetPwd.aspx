<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPwd.aspx.cs" Inherits="FF.ForgetPwd1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 159px;
        }
        .auto-style3 {
            width: 100%;
            height: 238px;
        }
        .auto-style4 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style5 {
            width: 159px;
            text-align: right;
        }
    .auto-style6 {
        width: 402px;
    }
    .auto-style7 {
        height: 32px;
    }
    .auto-style8 {
        width: 402px;
        height: 32px;
    }
    .auto-style9 {
        width: 159px;
        text-align: right;
        height: 32px;
    }
    .auto-style10 {
        font-size: x-large;
        color: #FF0000;
    }
    .auto-style11 {
        font-size: x-large;
    }
        .auto-style12 {
            height: 22px;
        }
        .auto-style13 {
            width: 402px;
            height: 22px;
        }
        .auto-style14 {
            width: 159px;
            text-align: right;
            height: 22px;
        }
        .auto-style15 {
            font-size: xx-large;
            text-align: center;
            height: 37px;
        }
        .auto-style16 {
            font-size: large;
        }
    </style>
</head>
<body style="background-color:Highlight">
    <form id="form1" runat="server">
        <div style="background-color:Highlight">
        <table class="auto-style3">
            <tr style="page-break-inside: avoid;">
                <td class="auto-style15" colspan="6">
                </td>
            </tr>
            <tr style="page-break-inside: avoid;">
                <td class="auto-style4" colspan="6"><strong>忘记密码界面<br />
                    </strong>
                    <asp:Label ID="labMessage" runat="server" CssClass="auto-style11"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr style="page-break-inside: avoid;">
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">用户名：</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*用户名不能为空" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:Label ID="labName" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr style="page-break-inside: avoid;">
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
                <td class="auto-style14">预留问题：</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtProblem" runat="server" ReadOnly="True" TextMode="Search" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr style="page-break-inside: avoid;">
                <td class="auto-style7"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">答案：</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtAnswer" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnswer" Display="Dynamic" ErrorMessage="*答案不能为空" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:Label ID="labAnswer" runat="server" CssClass="auto-style16" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr style="page-break-inside: avoid;">
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="找回" OnClick="Button1_Click" style="height: 26px" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="清空" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp; <a href="login.aspx">返回</a></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr style="page-break-inside: avoid;">
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">找回的密码：</td>
                <td>
                    <asp:Label ID="labCode" runat="server" CssClass="auto-style10"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
