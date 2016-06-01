<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabelTest.aspx.cs" Inherits="WebTestApplication2.LabelTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Width="200px" Style="word-break:break-all"></asp:Label>
        <br />
        <asp:Literal ID="Literal1" runat="server" ></asp:Literal>
        <asp:TextBox ID="TextBox1" runat="server" Height="82px" Width="157px"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
