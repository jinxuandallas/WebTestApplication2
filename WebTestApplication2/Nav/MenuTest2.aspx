<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuTest2.aspx.cs" Inherits="WebTestApplication2.Nav.MenuTest2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DataSourceID="SiteMapDataSource1" DynamicHorizontalOffset="3" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" MaximumDynamicDisplayLevels="2" StaticDisplayLevels="3" StaticSubMenuIndent="10px">
            <DataBindings>
                <asp:MenuItemBinding DataMember="SiteMapNode" />
            </DataBindings>
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
            <StaticItemTemplate>
                <%# Eval("Text") %>
            </StaticItemTemplate>
        </asp:Menu>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" SiteMapProvider="web1sitemap" />
    
    </div>
    </form>
</body>
</html>
