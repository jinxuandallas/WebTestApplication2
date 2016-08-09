<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuTest.aspx.cs" Inherits="WebTestApplication2.Nav.MenuTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    
    
<body>
    <style>
        .menu{
            font-size:12px;
            color:black;
        }
    </style>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.9em" ForeColor="#284E98" StaticDisplayLevels="2" StaticSubMenuIndent="70px">
            
            <LevelMenuItemStyles>
                <asp:MenuItemStyle BackColor="#993366" Font-Underline="False" ForeColor="White" Width="170px" />
            </LevelMenuItemStyles>
            <LevelSubMenuStyles>
                <asp:SubMenuStyle Font-Underline="false"  BackColor="#0066ff"  />
            </LevelSubMenuStyles>
            <StaticHoverStyle BackColor="#FF6600" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="30px"  VerticalPadding="15px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>

         

         <asp:Menu ID="Menu3" runat="server" BackColor="#B5C7DE" DataSourceID="SiteMapDataSource3" DynamicHorizontalOffset="2" CssClass="menu" StaticSubMenuIndent="10px">
             <DataBindings>
                 <asp:MenuItemBinding DataMember="SiteMapNode" />
             </DataBindings>
             <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
             <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
             <DynamicMenuStyle BackColor="#B5C7DE" />
             <DynamicSelectedStyle BackColor="#507CD1" />
             <DynamicItemTemplate>
                 <%# Eval("Text") %>
             </DynamicItemTemplate>
             <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
             <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
             <StaticSelectedStyle BackColor="#507CD1" />
             <StaticItemTemplate>
                 <%# Eval("Text") %>
             </StaticItemTemplate>
        </asp:Menu>

         

         <asp:SiteMapDataSource ID="SiteMapDataSource3" runat="server" SiteMapProvider="web1sitemap" />

         

         <br />

         <asp:Menu ID="Menu2" runat="server" DataSourceID="SiteMapDataSource2" StaticDisplayLevels="2" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="1.1em" ForeColor="#284E98" StaticSubMenuIndent="50px">
                           <LevelMenuItemStyles>
                                <asp:MenuItemStyle BackColor="#0066ff" Font-Underline="False" ForeColor="White" Width="200px" />
                           </LevelMenuItemStyles>
                            <LevelSubMenuStyles>
                <asp:SubMenuStyle Font-Underline="false"  />
            </LevelSubMenuStyles>
             <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicMenuStyle BackColor="#B5C7DE" />
                            <DynamicSelectedStyle BackColor="#507CD1" />
                            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                            <StaticMenuItemStyle HorizontalPadding="20px"  VerticalPadding="15px" />
                            <StaticSelectedStyle BackColor="#ff6600" />
                        </asp:Menu>
    
    </div>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" SiteMapProvider="web2sitemap" />
        <asp:SiteMapDataSource ID="SiteMapDataSource2" runat="server" ShowStartingNode="False" SiteMapProvider="web1sitemap" />
    </form>
</body>
</html>
