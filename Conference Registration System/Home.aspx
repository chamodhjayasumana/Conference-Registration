<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Conference_Registration_System.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome to the Conference Registration</h1>
            <p>Event Date: 25th December 2024</p>
            <p>Location: Conference Hall 1, City Center</p>

            <%-- If user is logged in, display user info and logout link --%>
            <asp:Label ID="lblGreeting" runat="server" Visible="false"></asp:Label><br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" Visible="false" /><br />

            <%-- If user is not logged in, show login link --%>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Visible="true" /><br />

            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" Visible="true" /><br />

    </div>
    </form>
</body>
</html>
