<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="WebTestApplication2.DataControls.ListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <hr />
                <span style="background-color: #FFF8DC;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                所属企业:
                <asp:Label ID="所属企业Label" runat="server" Text='<%# Eval("所属企业") %>' />
                <br />
                图片类型:
                <asp:Label ID="图片类型Label" runat="server" Text='<%# Eval("图片类型") %>' />
                <br />
                图片地址:
                <asp:Label ID="图片地址Label" runat="server" Text='<%# Eval("图片地址") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #008A8C;color: #FFFFFF;">ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                所属企业:
                <asp:TextBox ID="所属企业TextBox" runat="server" Text='<%# Bind("所属企业") %>' />
                <br />
                图片类型:
                <asp:TextBox ID="图片类型TextBox" runat="server" Text='<%# Bind("图片类型") %>' />
                <br />
                图片地址:
                <asp:TextBox ID="图片地址TextBox" runat="server" Text='<%# Bind("图片地址") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>未返回数据。</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />所属企业:
                <asp:TextBox ID="所属企业TextBox" runat="server" Text='<%# Bind("所属企业") %>' />
                <br />图片类型:
                <asp:TextBox ID="图片类型TextBox" runat="server" Text='<%# Bind("图片类型") %>' />
                <br />图片地址:
                <asp:TextBox ID="图片地址TextBox" runat="server" Text='<%# Bind("图片地址") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <hr />
                <span style="background-color: #DCDCDC;color: #000000;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                所属企业:
                <asp:Label ID="所属企业Label" runat="server" Text='<%# Eval("所属企业") %>' />
                <br />
                图片类型:
                <asp:Label ID="图片类型Label" runat="server" Text='<%# Eval("图片类型") %>' />
                <br />
                图片地址:
                <asp:Label ID="图片地址Label" runat="server" Text='<%# Eval("图片地址") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1"  PageSize="3" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                所属企业:
                <asp:Label ID="所属企业Label" runat="server" Text='<%# Eval("所属企业") %>' />
                <br />
                图片类型:
                <asp:Label ID="图片类型Label" runat="server" Text='<%# Eval("图片类型") %>' />
                <br />
                图片地址:
                <asp:Label ID="图片地址Label" runat="server" Text='<%# Eval("图片地址") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [图片33]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
