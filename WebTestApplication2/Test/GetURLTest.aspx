<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetURLTest.aspx.cs" Inherits="WebTestApplication2.Test.GetURLTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../scripts/jquery-1.8.2.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <a href="xxx" ><img id="error"  src="../Images/报错.png"/></a>
    </div>
    </form>
    <script>
        $(function () {
            $('#error').mouseover(function () {
                $('#error').attr("src", "../Images/报错2.png");
            })

            $('#error').mouseout(function () {
                $('#error').attr("src", "../Images/报错.png");
            })
        })
    </script>
</body>
</html>
