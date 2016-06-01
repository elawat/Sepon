<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="Sepon.pages.Logon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="LoginForm" runat="server">
    <div>
    <h3>Logon Page</h3>
<table>
   <tr>
      <td>User name:</td>
      <td><input id="txtUserName" type="text" runat="server"/></td>
      <td><ASP:RequiredFieldValidator ControlToValidate="txtUserName"
           Display="Static" ErrorMessage="*" runat="server" 
           ID="vUserName" /></td>
   </tr>
   <tr>
      <td>Password:</td>
      <td><input id="txtUserPass" type="password" runat="server"/></td>
      <td><ASP:RequiredFieldValidator ControlToValidate="txtUserPass"
          Display="Static" ErrorMessage="*" runat="server" 
          ID="vUserPass" />
      </td>
   </tr>
 
</table>
        <asp:Button ID="btnLogin" runat="server" Height="25px" OnClick="btnLogin_Click" Text="Login" Width="74px" />
        <p></p>
<asp:Label id="lblMsg" ForeColor="red" Font-Size="10" runat="server" />
    </div>
    </form>
</body>
</html>
