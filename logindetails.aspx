<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logindetails.aspx.cs" Inherits="Mobile_EShopping.logindetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 51px;
        }
        .auto-style3 {
            height: 49px;
        }
        .auto-style4 {
            height: 50px;
        }
        .auto-style5 {
            height: 44px;
        }
        .auto-style6 {
            height: 48px;
        }
        .auto-style7 {
            height: 55px;
        }
        .auto-style8 {
            width: 40%;
        }
        .auto-style9 {
            height: 51px;
            width: 40%;
        }
        .auto-style10 {
            height: 49px;
            width: 40%;
        }
        .auto-style11 {
            height: 50px;
            width: 40%;
        }
        .auto-style12 {
            height: 44px;
            width: 40%;
        }
        .auto-style13 {
            height: 48px;
            width: 40%;
        }
        .auto-style14 {
            height: 55px;
            width: 40%;
        }
    </style>
</head>
<body style="background-image: url('https://localhost:44308/model_images/bg1.jpg')">

    <form id="form1" runat="server" >
        <div>
            <table class="auto-style1">
                <tr>
                    <td style="width: 10%">&nbsp;</td>
                    <td class="auto-style8">   <asp:Label ID="Label1" runat="server" Height="100%" Text="Login!" Width="100%" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC3300"></asp:Label></td>
                    <td style="width: 30%">
                     <h1>   &nbsp;</h1>
                    </td>
                    <td style="width: 30%">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style9">
                       <b> <asp:Label ID="Label2" runat="server" Text="Login Id" Font-Bold="True" Font-Size="Large"></asp:Label></b>
                    </td>
                    <td class="auto-style2">
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox1" runat="server" Width="552px" Height="34px" Font-Names="Verdana" Font-Size="Larger"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Login Id" ForeColor="#CC3310" ValidationGroup="grp"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style11">
                      <b> <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" Font-Size="Large"></asp:Label></b> 
                    </td>
                    <td class="auto-style4">
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="552px" Height="34px" Font-Names="Verdana" Font-Size="Larger"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password Please" ForeColor="#CC3300" ValidationGroup="grp"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style13">
                        <asp:Label ID="lblerr" runat="server" ForeColor="#D30601" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td class="auto-style6">
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style13">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" ValidationGroup="grp" Height="40px" Width="110px" />
                    </td>
                    <td class="auto-style6">
                        </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style14">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">New Signup</asp:LinkButton>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
