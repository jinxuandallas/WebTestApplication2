<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestjQuery.aspx.cs" Inherits="WebTestApplication2.FileUpload.TestjQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
    <style>
        .delButton {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <input type="hidden" id="HiddenDelFiles"  runat="server"/>
        <input type="button" class="delButton" id="button2" value="xxyy"/>
    
    </div>
        <script>
            $(function () {
                $(".delButton").click(function () {
                    var h = $("#HiddenDelFiles").val();
                    $("#HiddenDelFiles").val(h + "12");
                    alert($("#HiddenDelFiles").val());
                })
            })
        </script>
    </form>
    
</body>
    
</html>
