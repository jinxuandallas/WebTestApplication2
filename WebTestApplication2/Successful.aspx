<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Successful.aspx.cs" Inherits="WebTestApplication2.Successful" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        用户登录成功！<asp:LoginStatus ID="LoginStatus1" runat="server" />
        <asp:LoginName ID="LoginName1" runat="server" />
        <br />
    
    </div>
    </form>
</body>
</html>
