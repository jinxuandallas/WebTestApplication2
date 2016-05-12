<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebTestApplication2.WebForm3" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" EnableScriptGlobalization="true" EnableScriptLocalization="true" runat="server">
        </asp:ToolkitScriptManager>
        <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" ><asp:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
        </asp:TabPanel></asp:TabContainer>
        
        <asp:ScriptManager ID="ScriptManager1" EnableScriptGlobalization="true" EnableScriptLocalization="true"  runat="server">
        </asp:ScriptManager>
    
        
    
    </div>
    </form>
</body>
</html>
