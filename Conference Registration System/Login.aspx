<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Conference_Registration_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div>
                        <asp:Label ID="lblRole" runat="server" Text="Select Role:"></asp:Label><br />
                        <asp:DropDownList ID="ddlRole" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlRole_SelectedIndexChanged">
                            <asp:ListItem Text="Select Role" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                            <asp:ListItem Text="User" Value="User"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvRole" runat="server" ControlToValidate="ddlRole" InitialValue="0" ErrorMessage="Please select a role." ForeColor="Red" /><br />
                    </div>
                    <br />

                    <label for="txtUsername">Username:</label>
                        <asp:TextBox ID="txtUsername" runat="server" /><br />
                        <asp:RegularExpressionValidator
                            ID="regUsernameValidator" 
                            runat="server" 
                            ControlToValidate="txtUsername" 
                            ValidationExpression="^[a-zA-Z0-9]+$" 
                            ErrorMessage="Username can only contain letters and numbers."
                            ForeColor="Red" /><br />

                        <label for="txtPassword">Password:</label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /><br />
                        <asp:RegularExpressionValidator 
                            ID="regPasswordValidator" 
                            runat="server" 
                            ControlToValidate="txtPassword" 
                            ValidationExpression="^(?=.*[0-9])(?=.*[!@#$%^&*])[A-Za-z0-9!@#$%^&*]{8,}$" 
                            ErrorMessage="Password must be at least 8 characters, with at least one number and one special character." 
                            ForeColor="Red" /><br />


                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br /><br />
                    
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
