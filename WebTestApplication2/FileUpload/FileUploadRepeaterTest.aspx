<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUploadRepeaterTest.aspx.cs" Inherits="WebTestApplication2.FileUpload.FileUploadRepeaterTest" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server">
        <asp:Repeater ID="Repeater1" runat="server" DataSource=" <%#a %>">
            <ItemTemplate>
                <asp:FileUpload ID="FileUpload" runat="server" />
                <asp:TextBox ID="TextBox" runat="server"></asp:TextBox>
               
                <br />
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 21px" Text="Button" />
    
    </div>
    </form>
</body>
</html>
