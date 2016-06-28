<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DivTest.aspx.cs" Inherits="WebTestApplication2.DataControls.DivTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="padding: 10px; margin: 10px; border: solid; border-width: 1px; border-color: black; width:700px; height:300px">
        <div style="width:600px;height:50px; margin: 10px">aa</div>
            <div style="float:left;margin: 10px;width:200px" >bb</div>
            <div style="float:left;margin: 10px;width:200px">cc</div>
        <div style="float:left; margin: 10px;width:200px">dd</div>
        <div style="float:left; margin: 10px;width:200px">ee</div>
        <div style=" float:left;margin: 10px;width:200px">ff</div>
        <div style=" float:left;margin: 10px;width:200px">gg</div>
    </div>
        </div>
    </form>
</body>
</html>
