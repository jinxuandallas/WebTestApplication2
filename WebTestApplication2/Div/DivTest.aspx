<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DivTest.aspx.cs" Inherits="WebTestApplication2.Div.DivTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border: 1px solid black; width: 600px; height: 300px;">
    <div style="width: 250px; height: 200px; float: left; padding: 10px; margin: 10px">aa</div>
        <div style="width: 250px; height: 200px; float: left; padding: 10px; margin: 10px">
            <div style="clear: both; width: 200px; height: 70px; padding: 10px; margin: 10px">cc</div>
            <div style=" width: 200px; height: 70px; padding: 10px; margin: 10px">dd</div>
        </div>
    </div>
    </form>
</body>
</html>
