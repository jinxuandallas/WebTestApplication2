<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListView2.aspx.cs" Inherits="WebTestApplication2.DataControls.ListView2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FAFAD2;color: #284775;">企业名称:
                    <asp:Label ID="企业名称Label" runat="server" Text='<%# Eval("企业名称") %>' />
                    <br />注册资本:
                    <asp:Label ID="注册资本Label" runat="server" Text='<%# Eval("注册资本") %>' />
                    <br />联系人:
                    <asp:Label ID="联系人Label" runat="server" Text='<%# Eval("联系人") %>' />
                    <br />默认图片:
                    <asp:Label ID="默认图片Label" runat="server" Text='<%# Eval("默认图片") %>' />
                    <br />载体:
                    <asp:Label ID="载体Label" runat="server" Text='<%# Eval("载体") %>' />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #FFCC66;color: #000080;">企业名称:
                    <asp:TextBox ID="企业名称TextBox" runat="server" Text='<%# Bind("企业名称") %>' />
                    <br />注册资本:
                    <asp:TextBox ID="注册资本TextBox" runat="server" Text='<%# Bind("注册资本") %>' />
                    <br />联系人:
                    <asp:TextBox ID="联系人TextBox" runat="server" Text='<%# Bind("联系人") %>' />
                    <br />默认图片:
                    <asp:TextBox ID="默认图片TextBox" runat="server" Text='<%# Bind("默认图片") %>' />
                    <br />载体:
                    <asp:TextBox ID="载体TextBox" runat="server" Text='<%# Bind("载体") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>未返回数据。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">企业名称:
                    <asp:TextBox ID="企业名称TextBox" runat="server" Text='<%# Bind("企业名称") %>' />
                    <br />注册资本:
                    <asp:TextBox ID="注册资本TextBox" runat="server" Text='<%# Bind("注册资本") %>' />
                    <br />联系人:
                    <asp:TextBox ID="联系人TextBox" runat="server" Text='<%# Bind("联系人") %>' />
                    <br />默认图片:
                    <asp:TextBox ID="默认图片TextBox" runat="server" Text='<%# Bind("默认图片") %>' />
                    <br />载体:
                    <asp:TextBox ID="载体TextBox" runat="server" Text='<%# Bind("载体") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #FFFBD6;color: #333333;">企业名称:
                    <asp:Label ID="企业名称Label" runat="server" Text='<%# Eval("企业名称") %>' />
                    <br />注册资本:
                    <asp:Label ID="注册资本Label" runat="server" Text='<%# Eval("注册资本") %>' />
                    <br />联系人:
                    <asp:Label ID="联系人Label" runat="server" Text='<%# Eval("联系人") %>' />
                    <br />默认图片:
                    <asp:Label ID="默认图片Label" runat="server" Text='<%# t.Long2CapitalString(Eval("默认图片").ToString()) %>' />
                    <br />载体:
                    <asp:Label ID="载体Label" runat="server" Text='<%# Eval("载体") %>' />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">企业名称:
                    <asp:Label ID="企业名称Label" runat="server" Text='<%# Eval("企业名称") %>' />
                    <br />注册资本:
                    <asp:Label ID="注册资本Label" runat="server" Text='<%# Eval("注册资本") %>' />
                    <br />联系人:
                    <asp:Label ID="联系人Label" runat="server" Text='<%# Eval("联系人") %>' />
                    <br />默认图片:
                    <asp:Label ID="默认图片Label" runat="server" Text='<%# Eval("默认图片") %>' />
                    <br />载体:
                    <asp:Label ID="载体Label" runat="server" Text='<%# Eval("载体") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [企业名称], [注册资本], [联系人], [默认图片], [载体] FROM [企业]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
