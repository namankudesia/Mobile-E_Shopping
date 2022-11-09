<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Mobile_EShopping.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 44px;
        }
    </style>
</head>
<body style="background-image: url('https://localhost:44308/model_images/bg1.jpg')">
    <form id="form1" runat="server" >
        <table class="auto-style1">
            <tr>
                <td style="width: 10%">&nbsp;</td>
                <td style="width: 30%">&nbsp;</td>
                <td style="width: 30%">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="New User Registration "></asp:Label>
                </td>
                <td style="width: 30%">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 10%">&nbsp;</td>
                <td style="width: 30%">&nbsp;</td>
                <td style="width: 30%">
                    &nbsp;</td>
                <td style="width: 30%">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Username" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Larger" Height="34px" Width="552px" Font-Names="Verdana"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#CC3310">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="New Password" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="552px" Font-Names="Verdana" Font-Size="Larger" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#CC3310">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Confirm Password" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="552px" Font-Names="Verdana" Font-Size="Larger" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ErrorMessage="Password Not Same" ForeColor="#CC3310" ControlToValidate="TextBox3"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman" Text="Name" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" Height="34px" Width="552px" Font-Names="Verdana" Font-Size="Larger"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="#CC3310">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Email-Id " Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="552px" Font-Names="Verdana" Font-Size="Larger"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BorderStyle="None" ControlToValidate="TextBox5" ErrorMessage="Invalid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC3310">Invalid Email Id</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Contact No." Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="34px" Width="552px" Font-Names="Verdana" Font-Size="Larger"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="#CC3310">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblerr" runat="server" Font-Italic="False" Font-Names="Times New Roman" ForeColor="Lime"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Height="40px" Width="110px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/logindetails.aspx">Back....</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
