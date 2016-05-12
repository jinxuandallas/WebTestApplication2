<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnteringCompanyInformation.aspx.cs" Inherits="WebTestApplication2.Business.EnteringCompanyInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 20px;
            width: 130px;
        }
        .auto-style3 {
            width: 130px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">企业名称：</td>
                <td class="auto-style1">
                    <asp:TextBox ID="CompanyName" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CompanyName" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">企业简介：</td>
                <td>
                    <asp:TextBox ID="Introduction" runat="server" Height="80px" MaxLength="300" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">经营范围：</td>
                <td>
                    <asp:TextBox ID="BusinessScope" runat="server" Height="80px" MaxLength="300" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="提交" Width="60px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
