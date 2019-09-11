<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodItems.aspx.cs" Inherits="Ado.net.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: auto%;
        }
        .auto-style2 {
            width: 278px;
        }
        .auto-style3 {
            width: 797px;
            margin-left: 1000px;
        }
        .auto-style4 {
            height: 50px;
            width: 277px;
        }
        .auto-style5 {
            width: 797px;
            height: 50px;
            margin-left: 480px;
        }
        .auto-style6 {
            width: 278px;
            height: 50px;
        }
        .auto-style7 {
            width: 277px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style4" style="font-family: 'Times New Roman'; font-size: xx-large; color: #000000">&nbsp;</td>
                <td class="auto-style5" style="font-family: 'Times New Roman'; color: #FF0000; background-color: #00FF00; font-size: xx-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WELCOME TO&nbsp; &quot;THE KITCHEN..!!&quot;</td>
                <td class="auto-style6" style="font-family: 'Times New Roman'; font-size: xx-large">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-family: 'Times New Roman'; font-size: xx-large; color: #000000">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6" style="font-family: 'Times New Roman'; font-size: xx-large">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-family: 'Times New Roman'; font-size: xx-large; color: #000000">Menu Items</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6" style="font-family: 'Times New Roman'; font-size: xx-large">Ordered Items</td>
            </tr>
            <tr>
                <td class="auto-style7">

    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" AutoPostBack="True" Rows="8" BackColor="#66FF99" CssClass="auto-style1" Font-Size="Medium">
        
    
    </asp:ListBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
        <asp:ListBox ID="ListBox2" runat="server"  SelectionMode="Multiple" Rows="8" AutoPostBack="False" BackColor="#FFFF66" CssClass="auto-style1" Font-Size="Medium" ForeColor="Black"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">

                    &nbsp;</td>
                <td class="auto-style3">
        <asp:Button ID="Button1" runat="server" Text="AddMultiple>" OnClick="AddMultiple_Click" Width="135px" />
        <asp:Button ID="Button2" runat="server" Text="AddAll>>" OnClick="AddAll_Click" style="margin-bottom: 0px" Width="146px" />
        <asp:Button ID="Button3" runat="server" Text="<DeleteMultiple" OnClick="DeleteMultiple_Click" Width="179px" />
        <asp:Button ID="Button4" runat="server" Text="<<DeleteAll" OnClick="DeleteAll_Click" Width="147px" /></td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">

                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">

                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">

                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Select Quantity:<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3"><br />
                    &nbsp;&nbsp
        &nbsp;&nbsp
        &nbsp;&nbsp
        &nbsp;&nbsp
        </td>
                <td class="auto-style2" style="font-size: x-large; font-family: 'Times New Roman'; background-color: #FF0000;">
                   Total Bill: <asp:Label ID="lblTotalBill" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">

        <asp:Button ID="txtOrder" runat="server" Text="Place Order" OnClick="btnOrder_Click" />

   

                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" ForeColor="Blue"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">

                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
        <br />


    </div>
    </form>
</body>
</html>
