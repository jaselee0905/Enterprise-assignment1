<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListAuthor.aspx.cs" Inherits="ABCBooks_JaesungLee.ListAuthor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book List by Author</title>
</head>
<body>
    <h1>Book List by Author</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnHome" runat="server" OnClick="btnHome_click" Text="Home" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnShow" runat="server" OnClick="btnShow_Click" Text="Show All" />
            <br />
            <br />
            <asp:DropDownList ID="ddAuthor" runat="server" DataSourceID="SqlDataSource1" DataTextField="Author" DataValueField="Author" AutoPostBack="True" >
            </asp:DropDownList>
            <br />
            <br />
            <asp:GridView ID="gvAuthor" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="50%" DataSourceID="sqlAuthor" >
                <Columns>
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="sqlAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:books %>" SelectCommand="SELECT [Author], [Title], [Price] FROM [Books] WHERE ([Author] = @Author)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddAuthor" Name="Author" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:books %>" SelectCommand="SELECT [Author] FROM [Books]"></asp:SqlDataSource>
    </form>
</body>
</html>
