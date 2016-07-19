<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RatyTest.aspx.cs" Inherits="WebTestApplication2.JQueryTest.RatyTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .raty {
        }

        .group {
            font: 11px verdana;
        }
    </style>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery.raty.min.js" type="text/javascript"></script>

    <!--<script src="../scripts/jquery-1.8.2.min.js"></script>
    <script src="../scripts/jquery.raty.min.js"></script>-->

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="font: 11px verdana;" id="star" runat="server">
            </div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <input type="hidden" id="score" runat="server" />
        </div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="name" DataSourceID="SqlDataSource1">

            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>未返回数据。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>

            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <script>
                            $(".raty").raty({
                                start: <%# Eval("raty") %>,
                            });
                        </script>
                        <div id="idraty" class="raty" style="font: 11px verdana;"></div>
                        <%--<asp:Label ID="ratyLabel" runat="server" Text='<%# Eval("raty") %>' />--%>
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">name</th>
                                    <th runat="server">raty</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>

        </asp:ListView>

        <div class="group"></div>
        <div class="group"></div>
        <div class="group"></div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="label" runat="server" Text='<%#Eval("name") %>'></asp:Label>

                <div id="rraty" class="raty"></div>
                <br />
            </ItemTemplate>
        </asp:Repeater>

        <script>
            $(function(){
                $(".raty").each(function(score,edole){
                    $(this).raty({
                    start: score
                    });
                })

            })
        </script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [raty]"></asp:SqlDataSource>
    </form>

    <script type="text/javascript">
        $('#star').raty({
            hintList: ['很差', '较差', '一般', '较好', '很好'],
            start: 2,
            targetKeep: true,
            click: function (score, evt) {
                $("#score").val(score);
            }
        });
        
        //$(".raty").raty()
        $('.group').raty();
                       
        //$(function () {
        //    $("#star").raty({ hintList: ['test1', 'test12', 'test13', 'test14', 'test15'] });
        //});
    </script>



</body>
</html>
