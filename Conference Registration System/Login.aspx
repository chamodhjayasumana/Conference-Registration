<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Conference_Registration_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-primary text-white text-center">
                            <h3>Login</h3>  
                        </div>
                        <div class="card-body">
                            <!-- Role Dropdown -->
                             <div class="mb-3">
                                 <asp:Label ID="lblRole" runat="server" Text="Select Role:"></asp:Label>
                                 <asp:DropDownList ID="ddlRole" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlRole_SelectedIndexChanged">
                                     <asp:ListItem Text="Select Role" Value="0"></asp:ListItem>
                                     <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                                     <asp:ListItem Text="User" Value="User"></asp:ListItem>
                                 </asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvRole" runat="server" ControlToValidate="ddlRole" InitialValue="0" ErrorMessage="Please select a role." ForeColor="Red" />
                             </div>
                       
                             <!-- Username -->
                             <div class="mb-3">
                                 
                                <label for="txtUsername">Username:</label>
                                <asp:TextBox ID="txtUsername" runat="server" />
                                <asp:RegularExpressionValidator
                                    ID="regUsernameValidator"
                                    runat="server"
                                    ControlToValidate="txtUsername"
                                    ValidationExpression="^[a-zA-Z0-9]+$"
                                    ErrorMessage="Username can only contain letters and numbers."
                                    ForeColor="Red" CssClass="text-danger" />
                             </div>

                             <!-- Password -->
                             <div class="mb-3">
                                <label for="txtPassword">Password:</label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                                <asp:RegularExpressionValidator
                                    ID="regPasswordValidator"
                                    runat="server"
                                    ControlToValidate="txtPassword"
                                    ValidationExpression="^(?=.*[0-9])(?=.*[!@#$%^&*])[A-Za-z0-9!@#$%^&*]{8,}$"
                                    ErrorMessage="Password must be at least 8 characters, with at least one number and one special character."
                                    ForeColor="Red" CssClass="text-danger"/>
                             </div>

                            <!-- Login Button -->
                            <div class="d-grid">
                                <asp:Button ID="Button2" runat="server" Text="Login" OnClick="btnLogin_Click" /><br />
                            </div>

                            <div class="mt-3">
                                <asp:Label ID="Label3" runat="server" ForeColor="Green" CssClass="form-text"></asp:Label>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
