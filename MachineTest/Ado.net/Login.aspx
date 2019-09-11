<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ado.net.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>s
<body>
    <form id="form1" runat="server">
    <div style="width:300px; margin-left:35%;margin-top:10%;background-color:lawngreen;">
        <h2>&nbsp;Login Page</h2>
        <br /><br />
      <h4>&nbsp;UserName:<asp:TextBox ID="txtName" runat="server"></asp:TextBox></h4>
        <br />
        <h4>&nbsp;Password:<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></h4>
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    </div>
    </form>
</body>
</html>
