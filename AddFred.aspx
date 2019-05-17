<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddFred.aspx.cs" Inherits="FF.AddFred" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 164px;
        }
        .auto-style2 {
        width: 254px;
    }
        .auto-style3 {
            text-align: right;
            width: 335px;
        }
        .auto-style4 {
            width: 335px;
        }
        .auto-style5 {
            width: 406px;
        }
        .auto-style9 {
            height: 39px;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style10 {
        width: 254px;
        text-align: center;
        font-size: xx-large;
    }
    .auto-style11 {
        font-size: x-large;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9" colspan="5">好友添加界面<br />
                    <asp:Label ID="labMessage" runat="server" CssClass="auto-style11"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style3">好友姓名：</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:Label ID="labName" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style3">性别：</td>
                <td class="auto-style5">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">手机号码：</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtNum" runat="server" MaxLength="11"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNum" Display="Dynamic" ErrorMessage="*请输入11位手机号" ForeColor="Red" ValidationExpression="^[\w]{11}$"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">电子邮件：</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*请输入正确额电子邮件地址" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnAdd" runat="server" Text="添加" OnClick="btnAdd_Click" />
&nbsp;
                    <asp:Button ID="btnClear" runat="server" Text="清空" OnClick="btnClear_Click"  />
&nbsp; <a href="login.aspx">返回</a></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
