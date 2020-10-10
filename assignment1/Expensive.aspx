<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Expensive.aspx.cs" Inherits="ABCBooks_JaesungLee.Expensive" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Expensive Books</title>
</head>
<body>
    <h1>Expensive Books</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnHome" runat="server" OnClick="btnHome_click" Text="Home" CausesValidation="false"/>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnShow" runat="server" OnClick="btnShow_Click" Text="Show All" CausesValidation="false" />
            <br />
            <br />
            <asp:TextBox ID="tbPrice" runat="server" PlaceHolder="Price" ></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="rvPrice" runat="server" ControlToValidate="tbPrice" ErrorMessage="Please input a positive numerical value" MaximumValue="99999" MinimumValue="0" Type="Currency"></asp:RangeValidator>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ISBN" DataSourceID="SqlDataSource1" Width="100%">
                <Columns>
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                    <asp:BoundField DataField="Page_Count" HeaderText="Page_Count" SortExpression="Page_Count" />
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
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:books %>" SelectCommand="SELECT * FROM [Books] WHERE ([Price] &gt; @Price) ORDER BY [Price] DESC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tbPrice" Name="Price" PropertyName="Text" Type="Decimal" DefaultValue="0" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
