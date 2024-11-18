<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Conference_Registration_System.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Conference Registration</title>
    <!-- Include Bootstrap CSS and JS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow-lg">
                        <div class="card-header bg-primary text-white text-center">
                            <h2>Conference Registration</h2>
                        </div>
                        <div class="card-body">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                                <!-- Full Name -->
                                <div class="mb-3">
                                    <label for="txtName" class="form-label">Full Name:</label>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="txtName" ValidationExpression="^[a-zA-Z\s]+$" 
                                        ErrorMessage="Name should only contain letters and spaces." CssClass="text-danger" />
                                </div>

                                 <!-- Email Address -->
                                 <div class="mb-3">
                                     <label for="txtEmail" class="form-label">Email Address:</label>
                                     <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                         ControlToValidate="txtEmail" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" 
                                         ErrorMessage="Please enter a valid email address." CssClass="text-danger" />
                                 </div>

                                 <!-- Phone Number -->
                                 <div class="mb-3">
                                     <label for="txtPhoneNumber" class="form-label">Telephone Number:</label>
                                     <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" />
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                         ControlToValidate="txtPhoneNumber" ValidationExpression="^\d{10}$" 
                                         ErrorMessage="Please enter a valid 10-digit phone number." CssClass="text-danger" />
                                 </div>
    
                                 <!-- Gender -->
                                 <div class="mb-3">
                                     <label for="ddlGender" class="form-label">Gender:</label>
                                     <asp:DropDownList ID="ddlGender" runat="server" AutoPostBack="True" 
                                         OnSelectedIndexChanged="ddlGender_SelectedIndexChanged" CssClass="form-select">
                                         <asp:ListItem Text="Select" Value="" />
                                         <asp:ListItem Text="Male" Value="Male" />
                                         <asp:ListItem Text="Female" Value="Female" />
                                         <asp:ListItem Text="Other" Value="Other" />
                                     </asp:DropDownList>
                                 </div>

                                 <!-- Dress Code -->
                                <div class="mb-3">
                                    <label for="ddlDressCode" class="form-label">Select Dress Code:</label>
                                    <asp:DropDownList ID="ddlDressCode" runat="server" CssClass="form-select">
                                    </asp:DropDownList>
                                </div>

                                <!-- Payment Method -->
                                <div class="mb-3">
                                    <label for="ddlPaymentMethod" class="form-label">Select Payment Method:</label>
                                    <asp:DropDownList ID="ddlPaymentMethod" runat="server" AutoPostBack="True" 
                                        OnSelectedIndexChanged="ddlPaymentMethod_SelectedIndexChanged" CssClass="form-select">
                                        <asp:ListItem Text="Select" Value="" />
                                        <asp:ListItem Text="Credit Card" Value="CreditCard" />
                                        <asp:ListItem Text="PayPal" Value="PayPal" />
                                    </asp:DropDownList>
                                </div>
        
                                <!-- Submit Button -->
                                <div class="d-grid">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Register" 
                                        CssClass="btn btn-primary" OnClick="btnSubmit_Click" ValidationGroup="RegistrationGroup" />
                                </div>


                                <!-- Status Message -->
                                <div class="mt-3">
                                    <asp:Label ID="lblStatus" runat="server" Text="" CssClass="text-success"></asp:Label>
                                </div>

                                
                            </ContentTemplate>
                        </asp:UpdatePanel>

                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div>
        </div>
    </form>
</body>
</html>

