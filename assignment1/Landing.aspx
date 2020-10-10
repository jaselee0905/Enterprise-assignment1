<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="ABCBooks_JaesungLee.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>
<body>
    <h1>Home</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        Assignment No.: 1<p>
            Course Code: PROG30000</p>
        Your Name: Jaesung lee<p>
            Your Id: 991495134</p>
        Instructor’s name: Syed Tanbee<p>
        </p>
        <br />
        <table style="width:75%;">
        <tr>
            <td><asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_click" Text="Insert" style="width:100%"/></td>
            <td><asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show All" style="width:100%"/></td>
            <td><asp:Button ID="btnAuthor" runat="server" Text="Book list by Author" OnClick="btnAuthor_Click" style="width:100%"/></td>
            <td><asp:Button ID="btnTitle" runat="server" Text="Book info Title" OnClick="btnTitle_Click" style="width:100%"/></td>
            <td><asp:Button ID="btnExp" runat="server" Text="Expensive Books" OnClick="btnExp_Click" style="width:100%"/></td>
        </tr>
    </table>
    </form>
</body>
</html>
