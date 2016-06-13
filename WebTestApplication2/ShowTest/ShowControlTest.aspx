<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowControlTest.aspx.cs" Inherits="WebTestApplication2.ShowTest.ShowControlTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 200px;
        }
        .auto-style2 {
            width: 310px;
        }
        .auto-style3 {
            width: 310px;
            height: 110px;
        }
        .auto-style4 {
            width: 200px;
            height: 110px;
        }
        .auto-style5 {
            height: 110px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:Panel ID="Panel1" runat="server" GroupingText="xxxx" ScrollBars="Auto" Width="200px">
                        <asp:Label ID="Label1" runat="server" Width="200px" style="word-break:break-all"></asp:Label>
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Height="50px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
