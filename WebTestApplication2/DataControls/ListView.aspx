<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="WebTestApplication2.DataControls.ListView" %>

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
            float: left;
            width: 314px;
            height: 50px;
        }
        .auto-style3 {
            float: left;
            width: 312px;
            height: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID">
           
            <EmptyDataTemplate>
                <span>未返回数据。</span>
            </EmptyDataTemplate>
            
            <ItemTemplate>
                <tr>
                    <td rowspan="2" style="width:300px;height:70px">图片地址:
                <asp:Label ID="图片地址Label"  runat="server" Text='<%# Eval("图片地址") %>' Style="word-break:break-all" /></td>
                    <td>ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>'  Visible="false"/>
                </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button"  CommandName="Select" OnClick="Button1_Click"/>
                    </td>
                </tr>
                <tr>
                    <td>所属企业:
                <asp:Label ID="所属企业Label" runat="server" Text='<%# Eval("所属企业") %>' />
                <br /></td>
                    <td>图片类型:
                <asp:Label ID="图片类型Label" runat="server" Text='<%# Eval("图片类型") %>' />
                <br /></td>
                </tr>
                
                
                
                    
<br />
            </ItemTemplate>
            <LayoutTemplate>
                <table>
                    <tr runat="server" id="itemPlaceholder">

                    </tr>
                </table>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1"  PageSize="3" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [图片33]"></asp:SqlDataSource>
    
        <table style="border: 1px solid #000000; width:100%;">
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Style="word-break:break-all" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td rowspan="2">&nbsp;</td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td rowspan="2">&nbsp;</td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div style="padding: 10px; margin: 10px; border: solid; border-width: 1px; border-color: black; width:700px; height:300px">
        <div style="float: left;width:200px;height:250px; margin: 10px">aa</div>
        <div style="margin: 10px" class="auto-style3">bb</div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div style="margin: 10px" class="auto-style2">cc</div>
    </div>
    </div>
    </form>
</body>
</html>
