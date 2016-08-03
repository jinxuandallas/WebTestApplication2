<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScriptTest.aspx.cs" Inherits="WebTestApplication2.Test.ScriptTest" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../scripts/jquery-1.8.2.min.js"></script>
    <script src="../scripts/jquery.raty.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="float: left; font: 11px verdana;" id="Star" class="raty1" runat="server"></div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" OnActiveTabChanged="TabContainer1_ActiveTabChanged" OnDemand="true">
                <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1" OnDemandMode="Always">
                    <ContentTemplate>xx</ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel2" ID="TabPanel2" OnDemandMode="Always">
                    <ContentTemplate>yy</ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3" OnDemandMode="Always">
                    <ContentTemplate>zz</ContentTemplate>
                </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
        </div>
        <%--<script>
            $('#Star').raty({
                path: '../JQueryTest/img/',
                start: 3
            })
        </script>--%>
    </form>
</body>
</html>
