<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReviewerRegistration.aspx.cs" Inherits="ReviewerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Last name</td>
            <td>
                <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="LastNameRequiredValidator" 
                    runat="server"  ErrorMessage="last name required"
                     ControlToValidate="LastNameTextBox">
                </asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>first name</td>
            <td>
                <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox></td>
             <td>
                 <asp:RequiredFieldValidator ID="FirstNameRequireValidator" 
                     runat="server" 
                     ControlToValidate="FirstNameTextBox" 
                     ErrorMessage="First name is Required">
                 </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
             <td>
                 <asp:RequiredFieldValidator ID="EmailRequiredValidator" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="ValidateEmailExpressn" 
                     runat="server" ControlToValidate="EmailTextBox" 
                     ErrorMessage="Not a valid Email" 
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                 </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>User name</td>
            <td>
                <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox></td>
             <td></td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
             <td>   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                     runat="server" 
                     ErrorMessage="RequiredFieldValidator"
                      ControlToValidate="PasswordTextBox">

                 </asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Confirm password</td>
            <td>
                <asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
             <td>
                 <asp:CompareValidator ID="CompareValidator1" 
                     runat="server" 
                     ErrorMessage="Passwords don't match"
                      ControlToValidate="ConfirmTextBox"
                      ControlToCompare="PasswordTextBox">

                 </asp:CompareValidator>
                 </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></td>
            <td>
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                </td>
             <td></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
