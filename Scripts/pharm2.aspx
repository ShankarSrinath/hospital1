<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pharm2.aspx.cs" Inherits="hospital1.Scripts.pharm2" %>

<!DOCTYPE html>

 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharmacy | Nisha Hospital</title>
    <style type="text/css">
        body{
            margin:0;
        }

 

        .head{
            background-color:cornflowerblue;
            padding:10px;
            text-align:center;
        }

 

        .main-container{
            position:absolute;
            left:40%;
        }

 

        .field-textbox{
            position:absolute;
            left:50%;
            margin-left:70px;
        }
 

        .field-titles{
            margin-left:-50px;
            font-size:20px;
            padding:10px 10px 10px 0px;
        }

 
        .fetch-button{
            color:black;
            position:absolute;
            left:330px;
            padding:2px;
            
        }

 

        .add-button{
            position:absolute;
            left: 126px;
            padding: 8px;
            width: 50px;
        }

 

        .bill-button{
            position:absolute;
            left:247px;
            padding: 8px;
            width: 50px;
        }

 

        .label{
            position: absolute;
            left: 310px;
        }

        .grid{
            position:absolute;
            margin-top: 380px;
            left:37%;
        }

 

      
    </style>
</head>

 

<body>
    <form id="form1" runat="server">
            <div class="head">
                <h1>Pharmacy</h1>
            </div>
        <br /><br />
        <div class="main-container">
            <span class="field-titles">Name</span><asp:TextBox Class="field-textbox" ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <span class="field-titles">Doctor Prescribed</span><asp:TextBox Class="field-textbox" ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <span class="field-titles">Drug Code</span><asp:TextBox Class="field-textbox" ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Button Class="fetch-button" ID="Button1" runat="server" Text="Fetch" OnClick="Button1_Click" />
            <br />
            <br />
            <span class="field-titles">Drug</span><asp:TextBox Class="field-textbox" ID="TextBox4" runat="server"></asp:TextBox>
            <asp:Label class="label" ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <span class="field-titles">Price</span><asp:TextBox Class="field-textbox" ID="TextBox5" runat="server" Height="16px" style="margin-bottom: 0px"></asp:TextBox>
            <br />
            <br />
            <span class="field-titles">Quantity</span><asp:TextBox Class="field-textbox" ID="TextBox6" runat="server" Height="16px"></asp:TextBox>
            <br />
            <br />
            <span class="field-titles">Total</span><asp:TextBox Class="field-textbox" ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button class="add-button" ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button class="bill-button" ID="Button3" runat="server" OnClick="Button3_Click" Text="Bill" />
        </div>

 

        <asp:GridView class="grid" ID="GridView1" runat="server" Font-Bold="True" ShowHeaderWhenEmpty="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
 
    </form>
</body>
</html>