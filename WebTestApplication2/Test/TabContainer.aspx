<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TabContainer.aspx.cs" Inherits="WebTestApplication2.Test.TabContainer" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <style>
    .ajax__tab_wf .ajax__tab_header
{
font-family: verdana,tahoma,helvetica;
font-size: 15px;
background-color:royalblue;
}
.ajax__tab_wf .ajax__tab_outer
{
padding-right: 0px;
background-color:royalblue;
height: 20px;
}
.ajax__tab_wf .ajax__tab_inner
{
padding-left: 3px;


}
.ajax__tab_wf .ajax__tab_tab
{
height: 20px;
padding: 5px;
margin: 0;
color:white;
background-color:#ff6600;
}
.ajax__tab_wf .ajax__tab_hover .ajax__tab_outer
{
background-color:burlywood;
}
.ajax__tab_wf .ajax__tab_hover .ajax__tab_inner
{
background-color: burlywood;
}
.ajax__tab_wf .ajax__tab_hover .ajax__tab_tab
{
background-color:Olive;
}
.ajax__tab_wf .ajax__tab_active .ajax__tab_outer
{
background-color:Orange;}
.ajax__tab_wf .ajax__tab_active .ajax__tab_inner
{
background-color:Maroon;}
.ajax__tab_wf .ajax__tab_active .ajax__tab_tab
{
    color:black;
background-color: aqua;}
.ajax__tab_wf .ajax__tab_body
{
font-family: verdana,tahoma,helvetica;
font-size: 15px;
border: 1px solid #999999;
border-top: 0;
padding: 8px;
background-color: white;
}
    </style>
</head>


<body>
    <form id="form1" runat="server">
<asp:scriptmanager runat="server"></asp:scriptmanager>
    <div>
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server"  CssClass="ajax__tab_wf" ActiveTabIndex="0" Height="128px"
            Width="600px" OnDemand="true">
            <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1" OnDemandMode="Once">
                <ContentTemplate>
                    I'm tab 1, I was rendered at
                    <%= DateTime.Now.ToString("T") %>
                    <br />
                    My OnDemandMode is &#39;Once&#39;
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2" OnDemandMode="Always">
                <ContentTemplate>
                    I'm tab 2, I was rendered at
                    <%= DateTime.Now.ToString("T") %>
                    <br />
                    My OnDemandMode is &#39;Always&#39;
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3" OnDemandMode="None">
                <ContentTemplate>
                    I'm tab 3, I was rendered at
                    <%= DateTime.Now.ToString("T") %>
                    <br />
                    My OnDemandMode is &#39;None&#39;
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4" OnDemandMode="Once">
                <ContentTemplate>
                    I'm tab 4. Hey, I&#39;m loaded only once!<br />
                    I was rendered at
                    <%= DateTime.Now.ToString("T") %>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>
    </div>
    </form>
</body>
</html>
