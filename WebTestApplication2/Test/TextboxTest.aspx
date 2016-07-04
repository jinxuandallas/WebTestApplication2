<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextboxTest.aspx.cs" Inherits="WebTestApplication2.Test.TextboxTest" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .text {
        resize:none
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server" Height="60px" TextMode="MultiLine"  CssClass="text" Width="140px" ReadOnly="True"></asp:TextBox>
    
        
    
       
        <asp:Label ID="Label1" runat="server" Width="200px" Style="border:solid ;border-color:black;border-width:1px; word-wrap : break-word; word-break: break-all;height:100px;overflow-y: scroll;"></asp:Label>
    
        
    
       
    </div>
    </form>
</body>
</html>
