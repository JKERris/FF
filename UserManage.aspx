<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserManage.aspx.cs" Inherits="FF.UserManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 167px;
    }
    .auto-style2 {
        width: 305px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Uname" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="441px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Uname" HeaderText="Uname" ReadOnly="True" SortExpression="Uname" />
                        <asp:BoundField DataField="Upwd" HeaderText="Upwd" SortExpression="Upwd" />
                        <asp:BoundField DataField="Uproblem" HeaderText="Uproblem" SortExpression="Uproblem" />
                        <asp:BoundField DataField="Uanswer" HeaderText="Uanswer" SortExpression="Uanswer" />
                        <asp:CommandField HeaderText="编辑" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:manageTConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [Uname] = @Uname" InsertCommand="INSERT INTO [User] ([Uname], [Upwd], [Uproblem], [Uanswer]) VALUES (@Uname, @Upwd, @Uproblem, @Uanswer)" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [Upwd] = @Upwd, [Uproblem] = @Uproblem, [Uanswer] = @Uanswer WHERE [Uname] = @Uname">
                    <DeleteParameters>
                        <asp:Parameter Name="Uname" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Uname" Type="String" />
                        <asp:Parameter Name="Upwd" Type="String" />
                        <asp:Parameter Name="Uproblem" Type="String" />
                        <asp:Parameter Name="Uanswer" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Upwd" Type="String" />
                        <asp:Parameter Name="Uproblem" Type="String" />
                        <asp:Parameter Name="Uanswer" Type="String" />
                        <asp:Parameter Name="Uname" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:manageTConnectionString %>" DeleteCommand="DELETE FROM [Fred] WHERE [Fname] = @Fname" InsertCommand="INSERT INTO [Fred] ([Fname], [Fnum], [Femail], [Fsex]) VALUES (@Fname, @Fnum, @Femail, @Fsex)" SelectCommand="SELECT * FROM [Fred]" UpdateCommand="UPDATE [Fred] SET [Fnum] = @Fnum, [Femail] = @Femail, [Fsex] = @Fsex WHERE [Fname] = @Fname">
                    <DeleteParameters>
                        <asp:Parameter Name="Fname" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Fname" Type="String" />
                        <asp:Parameter Name="Fnum" Type="String" />
                        <asp:Parameter Name="Femail" Type="String" />
                        <asp:Parameter Name="Fsex" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Fnum" Type="String" />
                        <asp:Parameter Name="Femail" Type="String" />
                        <asp:Parameter Name="Fsex" Type="String" />
                        <asp:Parameter Name="Fname" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
</div>
</asp:Content>
