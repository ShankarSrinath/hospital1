<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="hospital1.Scripts.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 262px;
            height: 23px;
        }
        .auto-style4 {
            width: 262px;
            text-align: right;
            height: 30px;
        }
        .auto-style5 {
            width: 262px;
            text-align: right;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            background-color: #CC0099;
        }
        
    </style>
            </head>
            <html xmlns="http://www.w3.org/1999/xhtml">
            <body>
                <form id="form1" runat="server">
                    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">Login Page</span></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">Username</td>
                <td class="auto-style8"><span class="auto-style1">
                    <asp:TextBox ID="TextBoxUsername" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxUsername" CssClass="auto-style7" ErrorMessage="Please enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style5">Password</td>
                <td class="auto-style6"><span class="auto-style1">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPassword" CssClass="auto-style7" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style11">
                    <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="Login" />
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>