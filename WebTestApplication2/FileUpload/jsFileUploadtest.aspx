<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jsFileUploadtest.aspx.cs" Inherits="WebTestApplication2.FileUpload.jsFileUploadtest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
    <style type="text/css">
        .delButton{}
        .pic{}
    </style>
    <!--<script>
        function ow(url)
        {
            var v=$(this).attr("src")
            alert(v);
            //window.open(v,"_blank");
        }
    </script>-->
</head>
<body>
    <form id="form1" runat="server">
        
<asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div id="pic">
                        <!--<a  href='<%# Eval("图片地址") %>' target="_blank"></a>-->
                            <asp:Image ImageUrl='<%# Eval("图片地址") %>' ID="img"  CssClass="pic" Height="100px" Width="100px" runat="server"/>
                            <!--<asp:ImageButton ID="ImageButton1"  ImageUrl='<%# Eval("图片地址") %>' OnClientClick='ow("aa")'  CssClass="pic" Height="100px" Width="100px" runat="server" />-->
                            <!--<asp:Button ID="Button2" runat="server" Text="删除"  CssClass="delButton"  OnClick="Button2_Click" />-->
                            <input type="button" id="del" class="delButton" value="删除"/>
                        <br />
                            </div>
                    </ItemTemplate>
                </asp:Repeater>
       
   
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [图片地址] FROM [图片]"></asp:SqlDataSource>
        
    <div id="f" style="background-color: Red;">
        <div id="zhi">
            <div id="content">
                <input id="File1" type="file" runat="server"/><input type="button" id="jia" value="添加" /><input
                    type="button" value="删除" id="jian" />
                <br />
            </div>
        </div>
    </div>
    <input type="button" id="tianjia" value="添加" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="重置" />
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        <input id="Hidden1" type="hidden" runat="server"/>
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
            if (a==0)
                alert("最多只能上传5张图片，请先删除")
            else
            {
                $("#f").show();
                $("#tianjia").hide();
            }
                
        });
        //添加file控件
        $("#jia").click(function () {
            //克隆id=content下面的元素。添加到id=zhi的div里面
            var shu = $("#f").find("#content").size();
            if (parseInt(shu) < a) {
                $("#content").clone(true).appendTo("#zhi");
                //a--;
            } else
            {
                alert("不能超过5张图片"+a);
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
        
        $(".delButton").click(function (){
            var h=$("#Hidden1").attr("value");
            $("#Hidden1").attr("value",h+";"+$(this).parent().find(".pic").attr("src"));
            a++;
            $(this).parent().remove();
            //alert($(this).parent().find(".pic").attr("src"));
            //alert($("#Hidden1").attr("value"));
        });
        //*/
        
        $(".pic").click(function(){
            window.open($(this).attr("src"),"_blank")
            //alert($(this).attr("src"));
        })
    })
</script>
