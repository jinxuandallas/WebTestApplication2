<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuTest.aspx.cs" Inherits="WebTestApplication2.Nav.MenuTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.9em" ForeColor="#284E98" StaticDisplayLevels="2" StaticSubMenuIndent="10px">
            
            <LevelMenuItemStyles>
                <asp:MenuItemStyle BackColor="#993366" Font-Underline="False" ForeColor="White" />
            </LevelMenuItemStyles>
            
            <StaticHoverStyle BackColor="#FF6600" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
    
    </div>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" SiteMapProvider="web2sitemap" />
    </form>
</body>
</html>
