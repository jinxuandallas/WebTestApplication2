<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageButtonTest.aspx.cs" Inherits="WebTestApplication2.Test.ImageButtonTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="ImageButton1"  OnClientClick="go()" ImageUrl="~/Images/pic1.jpg" runat="server"  Width="150px"/>
    
    </div>
    </form>
    <script>
        function go() {
            window.open("../Images/pic1.jpg", "_blank")
           // alert("yy");
        }
    </script>
</body>
</html>
