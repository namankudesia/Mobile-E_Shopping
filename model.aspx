<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="model.aspx.cs" Inherits="Mobile_EShopping.model" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        </style>
</head>
<body style="background-image: url('https://localhost:44308/model_images/bg1.jpg')">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" >
                <tr>
                    <td style="width: 10%">&nbsp;</td>
                    <td style="width: 60%">&nbsp;</td>
                    <td style="width: 30%">
                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#CC3300" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td style="width: 15%">
                                    <asp:Label ID="Label1" runat="server" Text="Select Brand"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Manf_id" DataValueField="Manf_id">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#FF6600" OnClick="LinkButton2_Click">Compare</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="background-image: newbackground.png">&nbsp;</td>
                    <td style="background-image: newbackground.png">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical" Width="100%" DataKeyNames="Model_id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="Model_id" HeaderText="Model Name" SortExpression="Model_id" />
                                <asp:BoundField DataField="model_price" HeaderText="Price" SortExpression="model_price" />
                                <asp:TemplateField HeaderText="Image" SortExpression="model_image">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("model_image") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("model_image") %>' Width="200px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Flipkart Link">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("model_link_flipcart") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("model_link_flipcart") %>' Text='Flipkart'></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="Amazon Link" SortExpression="model_linkamazon">
                                    <EditItemTemplate>
                                        <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="model_linkamazon" Mode="Edit" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("model_linkamazon") %>'>Amazon</asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <EmptyDataTemplate>
                                <asp:Image ID="Image1" runat="server" Height="91px" ImageUrl='<%# Eval("model_image") %>' Width="111px" />
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                    </td>
                    <td style="background-image: newbackground.png">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Manf_id,Model_id,Group_id,Subgroup_id" DataSourceID="SqlDataSource3" GridLines="None" Width="100%" ForeColor="#333333">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Subgroup_id" HeaderText="Details" ReadOnly="True" SortExpression="Subgroup_id" >
                                <ItemStyle ForeColor="#CC0000" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" NullDisplayText="**************************" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                    <td>
                        <asp:Image ID="Image3" runat="server" Height="800px" ImageUrl="~/model_images/bg1.jpg" Width="400px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT distinct[Manf_id] FROM [Model]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Model_id], [model_price], [model_image], [model_linkamazon], [model_link_flipcart] FROM [Model] WHERE ([Manf_id] = @Manf_id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Manf_id" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Model_des] WHERE (([Manf_id] = @Manf_id) AND ([Model_id] = @Model_id)) ORDER BY [code]">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Manf_id" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView1" Name="Model_id" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
