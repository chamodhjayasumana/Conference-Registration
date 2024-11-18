<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Conference_Registration_System.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Conference Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card shadow-lg">
                        <div class="card-header bg-primary text-white text-center">
                            <h1>Welcome to the Conference Registration</h1>
                        </div>
                        <div class="card-body">
                            <p class="text-muted text-center">
                                <strong>Event Date:</strong> 25th December 2024<br />
                                <strong>Location:</strong> Conference Hall 1, City Center
                            </p>

                            <div class="text-center">
                                <%-- If user is logged in, display user info and logout link --%>
                                <asp:Label ID="lblGreeting" runat="server" Visible="false" CssClass="text-success h5"></asp:Label></br>
                                <asp:Button ID="btnLogout" runat="server" Text="Logout"  CssClass="btn btn-danger mt-3" OnClick="btnLogout_Click" Visible="false" />
                            </div>

                            <div class="text-center mt-4">
                                 <%-- If user is not logged in, show login link --%>
                                 <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary me-2" OnClick="btnLogin_Click" Visible="true" />
                                 <asp:Button ID="btnRegister" runat="server" Text="Register"  CssClass="btn btn-success" OnClick="btnRegister_Click" Visible="true" />   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
    </form>
</body>
</html>
