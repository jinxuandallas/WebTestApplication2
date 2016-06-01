<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SlideRepeater.aspx.cs" Inherits="WebTestApplication2.JQueryTest.SlideRepeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
    <div>
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate><li><%# Container.DataItem %></li></ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
        <br />
        <asp:Repeater ID="Repeater2" runat="server">
            <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate><li><a href="http://www.SuperSlide2.com" target="_blank"><img src="../Images/pic<%# Container.DataItem.ToString() %>.jpg" /></a></li></ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
