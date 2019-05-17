<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FredManage.aspx.cs" Inherits="FF.FredManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 170px;
        }
    .auto-style2 {
        width: 369px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="3" rowspan="4">
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Fname" ForeColor="Black" GridLines="Vertical" Width="476px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Fname" HeaderText="Fname" ReadOnly="True" SortExpression="Fname" />
                            <asp:BoundField DataField="Fnum" HeaderText="Fnum" SortExpression="Fnum" />
                            <asp:BoundField DataField="Femail" HeaderText="Femail" SortExpression="Femail" />
                            <asp:BoundField DataField="Fsex" HeaderText="Fsex" SortExpression="Fsex" />
                            <asp:CommandField HeaderText="编辑" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:oppaStrings %>" DeleteCommand="DELETE FROM [Fred] WHERE [Fname] = @Fname" InsertCommand="INSERT INTO [Fred] ([Fname], [Fnum], [Femail], [Fsex]) VALUES (@Fname, @Fnum, @Femail, @Fsex)" SelectCommand="SELECT * FROM [Fred]" UpdateCommand="UPDATE [Fred] SET [Fnum] = @Fnum, [Femail] = @Femail, [Fsex] = @Fsex WHERE [Fname] = @Fname">
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
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
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
