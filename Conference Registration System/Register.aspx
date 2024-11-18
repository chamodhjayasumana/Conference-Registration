<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Conference_Registration_System.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

         <div>
            <h2>Conference Registration</h2>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <label for="txtName">Full Name:</label>
                    <asp:TextBox ID="txtName" runat="server" />
                    <asp:RegularExpressionValidator ID="regNameValidator" runat="server" 
                        ControlToValidate="txtName" ValidationExpression="^[a-zA-Z\s]+$" 
                        ErrorMessage="Name should only contain letters and spaces." ForeColor="Red" />
                    <br />

                    <label for="txtEmail">Email Address:</label>
                    <asp:TextBox ID="txtEmail" runat="server" />
                    <asp:RegularExpressionValidator ID="regEmailValidator" runat="server" 
                        ControlToValidate="txtEmail" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" 
                        ErrorMessage="Please enter a valid email address." ForeColor="Red" />
                    <br />

                    <label for="txtPhoneNumber">Telephone Number:</label>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" />
                    <asp:RegularExpressionValidator ID="regPhoneValidator" runat="server" 
                        ControlToValidate="txtPhoneNumber" 
                        ValidationExpression="^\d{10}$" 
                        ErrorMessage="Please enter a valid 10-digit phone number." 
                        ForeColor="Red" />
                    <br />

                    <!-- Gender Selection -->
                    <label for="ddlGender">Gender:</label>
                    <asp:DropDownList ID="ddlGender" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged">
                        <asp:ListItem Text="Select" Value="" />
                        <asp:ListItem Text="Male" Value="Male" />
                        <asp:ListItem Text="Female" Value="Female" />
                        <asp:ListItem Text="Other" Value="Other" />
                    </asp:DropDownList>
                    <br />

                     <!-- Dress Code Selection -->
                    <label for="ddlDressCode">Select Dress Code:</label>
                    <asp:DropDownList ID="ddlDressCode" runat="server">
                    </asp:DropDownList>
                    <br />

                    
                    <label for="ddlPaymentMethod">Select Payment Method:</label>
                    <asp:DropDownList ID="ddlPaymentMethod" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPaymentMethod_SelectedIndexChanged">
                        <asp:ListItem Text="Select" Value="" />
                        <asp:ListItem Text="Credit Card" Value="CreditCard" />
                        <asp:ListItem Text="PayPal" Value="PayPal" />
                    </asp:DropDownList>

                    <br />
                    <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>

            <asp:Label ID="lblStatus" runat="server" Text="" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
