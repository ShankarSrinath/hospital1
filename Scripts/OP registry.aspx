<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP registry.aspx.cs" Inherits="hospital1.Scripts.OP_registry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Name<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Age<asp:TextBox ID="TextBox2" runat="server" MaxLength="2"></asp:TextBox>
        <br />
        <br />
        Sex<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Blood group<asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Mobile<asp:TextBox ID="TextBox3" runat="server" MaxLength="10"></asp:TextBox>
        <br />
        <br />
        Consulting Doctor<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        Consultation fees<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTER" />
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
