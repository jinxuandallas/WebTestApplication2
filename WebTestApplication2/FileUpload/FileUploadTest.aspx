﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUploadTest.aspx.cs" Inherits="WebTestApplication2.FileUpload.FileUploadTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Add" runat="server" OnClick="Add_Click" Text="添加" />
           
    
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
           
    
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
           
    
    </div>
        
    </form>
</body>
</html>
