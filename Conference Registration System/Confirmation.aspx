<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Conference_Registration_System.Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Registration Confirmation</h2>

            <p><strong>Name:</strong> <asp:Label ID="lblName" runat="server" /></p>
            <p><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server" /></p>
            <p><strong>Telephone Number:</strong> <asp:Label ID="lblPhoneNumber" runat="server" /></p>
            <p><strong>Payment Method:</strong> <asp:Label ID="lblPaymentMethod" runat="server" /></p>
        </div>
    </form>
</body>
</html>
