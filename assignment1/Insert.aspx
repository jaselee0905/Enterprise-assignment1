<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="ABCBooks_JaesungLee.Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert Book</title>
    <style type="text/css">
        .auto-style1 {
            height: 42px;
        }
    </style>
    </head>
<body>
    <h1>Insert Book</h1>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnHome" runat="server" OnClick="btnHome_click" Text="Home" CausesValidation="false" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnShow" runat="server" Text="Show All Books" OnClick="btnShow_Click" CausesValidation="false"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbSuccess" runat="server" ForeColor="Black" Text="Submission Sucessful!" Visible="False"></asp:Label>
    </div>
        <br />
        <label>* = Required</label>
        <table>
            <tr>
                <td>Book title:</td>
                <td><asp:TextBox ID="tbTitle" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvTitle" runat="server" ControlToValidate="tbTitle" ErrorMessage="Book Title field cannot be empty">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style1">Author:</td>
                <td class="auto-style1"><asp:TextBox ID="tbAuthor" runat="server"></asp:TextBox></td>
                <td class="auto-style1"><asp:RequiredFieldValidator ID="rfvAuthor" runat="server" ControlToValidate="tbAuthor" ErrorMessage="Author field cannot be empty">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>ISBN Number: </td>
                <td><asp:TextBox ID="tbISBN" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvISBN" runat="server" ControlToValidate="tbISBN" ErrorMessage="ISBN number field cannot be empty">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvISBN" runat="server" ControlToValidate="tbISBN" ErrorMessage="ISBN must be numerical Value" MaximumValue="99999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>Publishing date:</td>
                <td><asp:TextBox ID="tbDate" textmode="Date" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="tbDate" ErrorMessage="Publishing date field cannot be empty">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="tbDate" ErrorMessage="Date cannot be in the future" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>Publisher: </td>
                <td><asp:TextBox ID="tbPublisher" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvPublisher" runat="server" ControlToValidate="tbPublisher" ErrorMessage="Publisher field cannot be empty">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Page count: </td>
                <td><asp:TextBox ID="tbPgCount" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvPgCount" runat="server" ControlToValidate="tbPgCount" ErrorMessage="Page count field cannot be empty">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPgCount" runat="server" ControlToValidate="tbPgCount" ErrorMessage="Page count must be a positive numerical value" MaximumValue="99999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><asp:TextBox ID="tbPrice" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvPrice" runat="server" ControlToValidate="tbPrice" ErrorMessage="Price field cannot be empty">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPrice" runat="server" ControlToValidate="tbPrice" ErrorMessage="Price must be a positive numerical value" MaximumValue="99999" MinimumValue="0" Type="Currency"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="btnSubmit" runat="server" Text="Submit" style="width:100%" OnClick="btnSubmit_Click"/></td>
                <td><input id="Reset1" type="reset" value="reset" style="width:100%"/></td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
