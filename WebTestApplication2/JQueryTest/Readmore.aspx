<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Readmore.aspx.cs" Inherits="WebTestApplication2.JQueryTest.Readmore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../scripts/jquery-1.8.2.min.js"></script>
    <%--<script src="../scripts/jquery.min.js"></script>--%>
    <script src="../scripts/readmore.min.js"></script>
</head>
<body>
    <style>
        .article {
        }
    </style>
    <form id="form1" runat="server">
        <div>
            <div style="width: 500px">
                <article>ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                </article>
            </div>
            <article>
                <br />
                ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                ddddd</article>
            <div style="width: 700px">
                <article>
                    <br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                    ddddddddddddddddddxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxxxxxxxxxxxxxxxxxxxx<br />
                </article>
            </div>
        </div>
    </form>
    <a style="text-decoration: none; text-align: right; font-size: 13px;" href="xx.aspx">dd</a>
    <script>
        $("article").readmore({
            collapsedHeight: 100,
            moreLink: '<a style="text-decoration: none;text-align: right; font-size: 13px" href="#">展开</a>',
            lessLink: '<a style="text-decoration: none;text-align: right; font-size: 13px" href="#">收起</a>'
        });
    </script>
</body>
</html>
