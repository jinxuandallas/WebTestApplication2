<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RatyTest.aspx.cs" Inherits="WebTestApplication2.JQueryTest.RatyTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
      
    </style>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery.raty.min.js" type="text/javascript"></script>
    
    <!--<script src="../scripts/jquery-1.8.2.min.js"></script>
    <script src="../scripts/jquery.raty.min.js"></script>-->
    
</head>
<body>
    <form id="form1" runat="server">
    <div >
    <div style="font: 11px verdana;" id="star"></div>
    </div>
    </form>
<script type="text/javascript">
    $('#star').raty({
        hintList: ['很差', '较差', '一般', '较好', '很好']
    });
    //$(function () {
    //    $("#star").raty({ hintList: ['test1', 'test12', 'test13', 'test14', 'test15'] });
    //});
</script>
</body>
</html>
