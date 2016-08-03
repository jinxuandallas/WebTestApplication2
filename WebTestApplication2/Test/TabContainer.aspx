<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TabContainer.aspx.cs" Inherits="WebTestApplication2.Test.TabContainer" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .ajax__tab_wf .ajax__tab_header {
            font-family: verdana,tahoma,helvetica;
            font-size: 15px;
            background-color: royalblue;
        }

        .ajax__tab_wf .ajax__tab_outer {
            padding-right: 0px;
            background-color: royalblue;
            height: 20px;
        }

        .ajax__tab_wf .ajax__tab_inner {
            padding-left: 3px;
        }

        .ajax__tab_wf .ajax__tab_tab {
            height: 20px;
            padding: 5px;
            margin: 0;
            color: white;
            background-color: #ff6600;
        }

        .ajax__tab_wf .ajax__tab_hover .ajax__tab_outer {
            background-color: burlywood;
        }

        .ajax__tab_wf .ajax__tab_hover .ajax__tab_inner {
            background-color: burlywood;
        }

        .ajax__tab_wf .ajax__tab_hover .ajax__tab_tab {
            background-color: Olive;
        }

        .ajax__tab_wf .ajax__tab_active .ajax__tab_outer {
            background-color: Orange;
        }

        .ajax__tab_wf .ajax__tab_active .ajax__tab_inner {
            background-color: Maroon;
        }

        .ajax__tab_wf .ajax__tab_active .ajax__tab_tab {
            color: black;
            background-color: aqua;
        }

        .ajax__tab_wf .ajax__tab_body {
            font-family: verdana,tahoma,helvetica;
            font-size: 15px;
            border: 1px solid #999999;
            border-top: 0;
            padding: 8px;
            background-color: white;
        }

        .raty {
        }

        .raty1 {
        }
    </style>
    <script src="../scripts/jquery-1.8.2.min.js"></script>
    <script src="../scripts/jquery.raty.min.js"></script>
</head>


<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <div>
            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" CssClass="ajax__tab_wf" ActiveTabIndex="0" 
                
                Width="1000px" OnDemand="true" OnActiveTabChanged="TabContainer1_ActiveTabChanged">
                <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1" OnDemandMode="Once">
                    <ContentTemplate>
                        I'm tab 2, I was rendered at
                    <%= DateTime.Now.ToString("T") %>
                        <br />
                        My OnDemandMode is &#39;Always&#39;
                   
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2" OnDemandMode="Always"  >
                    <ContentTemplate>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                        <div style="float: left; font: 11px verdana;" id="Star" class="raty1" runat="server"></div>
                        
                        <asp:ListView ID="ListViewResult" runat="server">
                            <LayoutTemplate>
                                <div id="itemPlaceholder" style="width: 1000px" runat="server"></div>
                                <div style="width: 1000px; text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                                    <asp:DataPager ID="DataPager1" PageSize="10" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>
                            </LayoutTemplate>
                            <EmptyDataTemplate>
                                <span>目前还没有评论</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <!-- 企业选项还可以设计的更漂亮些（企业名称横着一排显示）-->
                                <!-- 每一个要显示的label都要用Server.HtmlEncode重新编码，防止JavaScript注入攻击-->
                                <div style="clear: both; padding: 5px; margin: 10px; width: 800px; font-size: 13px">

                                    <div>
                                        <div style="float: left; width: 600px; margin: 10px">
                                            &nbsp;&nbsp;<asp:Label ID="LabelUsername" runat="server" Text='<%#commentc.ShowAnonymity(Eval("录入人").ToString(),Convert.ToInt16((Eval("是否匿名")))) %>'></asp:Label>&nbsp;&nbsp;
                                <asp:Label ID="CommentID" runat="server" Text='<%# Eval("ID") %>' Visible="false"></asp:Label>

                                            <input type="hidden" value='<%#Eval("星级") %>' />
                                            <div style="float: left; font: 11px verdana;" id="Star" class="raty" runat="server"></div>
                                        </div>

                                    </div>
                                    <div style="clear: both; width: 600px; margin: 10px">
                                        <article>
                                            <%-- 内容在录入时已经进行过HtmlEncode编码 --%>
                                            <asp:Label Style="word-break: break-all" ID="LabelComment" runat="server" Text='<%# Eval("内容") %>'></asp:Label>
                                        </article>
                                    </div>
                                    <div style="width: 600px; margin: 10px; color: #CFCCD2">
                                        <asp:Literal ID="Date" runat="server" Text='<%#commentc.ConvertDate(Eval("录入时间").ToString()) %>'></asp:Literal>
                                    </div>



                                    <hr style="clear: both" />
                                </div>

                            </ItemTemplate>
                        </asp:ListView>
                            </ContentTemplate></asp:UpdatePanel>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3" OnDemandMode="Once">
                    <ContentTemplate>
                        I'm tab 3, I was rendered at
                    <%= DateTime.Now.ToString("T") %>
                        <br />
                        My OnDemandMode is &#39;None&#39;
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4" OnDemandMode="Always">
                    <ContentTemplate>
                        I'm tab 4. Hey, I&#39;m loaded only once!<br />
                        I was rendered at
                    <%= DateTime.Now.ToString("T") %>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
        </div>
    </form>
    <script>
        $('.raty1').raty({
            path: '../JQueryTest/img/',
            start: 3
        })

        //$(function () {
        //    $(".raty").each(function () {
        //        var ratyValue = $(this).parent().find("input[type=hidden]").val();
        //        $(this).raty({
        //            path: "../JQueryTest/img/",
        //            readOnly: true,
        //            start: ratyValue
        //        });
        //    })

        //})
        <%--function clientActiveTabChanged(sender, args) {
            if ($find("<%=TabContainer1.ClientID%>").get_activeTabIndex() == 1) {
                $(function () {
                    $(".raty").each(function () {
                        var ratyValue = $(this).parent().find("input[type=hidden]").val();
                        $(this).raty({
                            path: "../JQueryTest/img/",
                            readOnly: true,
                            start: ratyValue
                        });
                    })

                })
            }
        }--%>

        function pageLoad() {
            $(function () {
                $(".raty").each(function () {
                    var ratyValue = $(this).parent().find("input[type=hidden]").val();
                    $(this).raty({
                        path: "../JQueryTest/img/",
                        readOnly: true,
                        start: ratyValue
                    });
                })

            })
        }
        //function ff() {
        //    alert("xxx");
        //    return true;
        //}
    </script>
</body>
</html>
