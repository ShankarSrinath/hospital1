<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="docsignup.aspx.cs" Inherits="hospital1.Scripts.docsignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Scripts/OP registry.aspx" Text="Op register" Value="Op register"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
    </form>
</body>
</html>
