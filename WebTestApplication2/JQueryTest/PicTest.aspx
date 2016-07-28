<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PicTest.aspx.cs" Inherits="WebTestApplication2.JQueryTest.PicTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../scripts/jquery-1.8.2.min.js"></script>
    <style type="text/css">
        .aa {
            width: 200px;
            height: 130px;
        }

        h3, img {
            cursor: pointer;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("img,h3").bind("click", function () {
                if ($("img").hasClass("aa")) {
                    $("img").removeClass("aa");
                } else {
                    $("img").addClass("aa");
                }
            })
        })



    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="../Images/pic6.jpg" class="aa" />
            <h3>图片图片</h3>
        </div>
    </form>
</body>
</html>
