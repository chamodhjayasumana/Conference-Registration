<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Conference_Registration_System.Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Confirmation</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</head>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow-lg">
                        <div class="card-header bg-success text-white text-center">
                            <h2>Registration Confirmation</h2>
                        </div>
                        <div class="card-body">
                            <!-- Confirmation Details -->
                            <p><strong>Name:</strong> <asp:Label ID="lblName" runat="server" CssClass="form-label" /></p>
                            <p><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server" CssClass="form-label" /></p>
                            <p><strong>Telephone Number:</strong> <asp:Label ID="lblPhoneNumber" runat="server" CssClass="form-label" /></p>
                            <p><strong>Payment Method:</strong> <asp:Label ID="lblPaymentMethod" runat="server" CssClass="form-label" /></p>
                        </div>
                        <div class="card-footer text-center">
                            <a href="Home.aspx" class="btn btn-primary">Return to Home</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

