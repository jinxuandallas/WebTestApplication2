<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jsFileUploadtest.aspx.cs" Inherits="WebTestApplication2.FileUpload.jsFileUploadtest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div id="pic">
                        <asp:Image ImageUrl='<%# Eval("图片地址") %>' ID="img" Height="100px" Width="100px" runat="server" />
                        <input type="button" value="删除" id="del_pic" />
                        <br />
                            </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [图片地址] FROM [图片]"></asp:SqlDataSource>
    <div id="f" style="background-color: Red;">
        <div id="zhi">
            <div id="content">
                <input id="File1" type="file" runat="server"/><input type="button" id="jia" value="添加" /><input
                    type="button" value="删除" id="jian" /><br />
            </div>
        </div>
    </div>
    <input type="button" id="tianjia" value="添加" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
    </form>
</body>
</html>
<script>
    $(function () {
        var a=<%= a%>;
        //让层隐藏
        $("#f").hide();
        //跟添加按钮绑定点击事件
        $("#tianjia").bind("click", function () {
            //点击添加按钮的时候，层显示
            $("#f").show();
        });
        //添加file控件
        $("#jia").click(function () {
            //克隆id=content下面的元素。添加到id=zhi的div里面
            var shu = $("#f").find("#content").size();
            if (parseInt(shu) < a) {
                $("#content").clone(true).appendTo("#zhi");
            } else
            {
                alert("不能超过"+a+"个");
            }
            
        });
        //删除file控件操作
        $("#jian").click(function () {
            //查找上传控件的个数
            var shu = $("#f").find("#content").size();
            //如果有多，就删除掉
            if (parseInt(shu) > 1) {
                $(this).parent().remove();
            }
            else {
                alert("至少保留一个！");
            }
        });

        $("#del_pic").click(function (){
            $(this).remove();
        });

        
    })
</script>
