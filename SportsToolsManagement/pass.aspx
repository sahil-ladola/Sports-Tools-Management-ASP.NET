<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pass.aspx.cs" Inherits="SportsToolsManagement.pass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
        <asp:Button ID="btnencrypt" runat="server" Text="submit" OnClick="btnencrypt_Click" />
    </form>
</body>
</html>
