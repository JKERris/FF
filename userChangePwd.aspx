<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userChangePwd.aspx.cs" Inherits="FF.userChangePwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 253px;
    }
    .auto-style2 {
        text-align: center;
        font-size: xx-large;
    }
    .auto-style3 {
        font-size: x-large;
    }
    .auto-style4 {
        height: 27px;
    }
    .auto-style5 {
        text-align: right;
        height: 27px;
        width: 153px;
    }
    .auto-style6 {
        width: 104px;
    }
    .auto-style7 {
        height: 27px;
        width: 104px;
    }
    .auto-style8 {
        text-align: right;
        width: 153px;
    }
    .auto-style9 {
        width: 153px;
    }
    .auto-style11 {
        height: 27px;
        width: 344px;
    }
    .auto-style12 {
        width: 344px;
    }
        .auto-style13 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="6">修改密码界面<br />
                <asp:Label ID="Label3" runat="server" CssClass="auto-style3" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">用户名：</td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">旧密码：</td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtBox1" runat="server" MaxLength="6" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style7"></td>
            <td class="auto-style5">新密码：</td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtBox2" runat="server" MaxLength="6" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">确认密码：</td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtBox3" runat="server" MaxLength="6" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtBox2" ControlToValidate="TxtBox3" ErrorMessage="*密码不一致" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style12">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="清空" OnClick="Button2_Click" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style13" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
</div>
</asp:Content>
