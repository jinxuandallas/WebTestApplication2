﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiView.aspx.cs" Inherits="WebTestApplication2.MultiView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="secret" runat="server">sss</asp:View>
            <asp:View ID="appeal" runat="server">aaa</asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
