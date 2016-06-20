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
        .defaultButton{}
        .dwl{}
        .divpic{}
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
                        <div id="pic" class="divpic">
                        <!--<a  href='<%# Eval("图片地址") %>' target="_blank"></a>-->
                            <asp:Image ImageUrl='<%# Eval("图片地址") %>' ID="img"  CssClass="pic" Height="100px" Width="100px" runat="server"/>
                            <!--<asp:ImageButton ID="ImageButton1"  ImageUrl='<%# Eval("图片地址") %>' OnClientClick='ow("aa")'  CssClass="pic" Height="100px" Width="100px" runat="server" />-->
                            <!--<asp:Button ID="Button2" runat="server" Text="删除"  CssClass="delButton"  OnClick="Button2_Click" />-->
                            <input type="button" id="del" class="delButton" value="删除"/>
                            <input type="button" id="default" class="defaultButton" value="设为默认"/>
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
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="重置" />
        
        <input id="Hidden1" type="hidden" runat="server"/>
        <input id="HiddenDefault" type="hidden" runat="server"/>
       
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                
            
        <asp:DropDownList ID="DropDownList1" CssClass="dwl" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
        </asp:DropDownList>
        
        </form>
</body>

</html>
<script>
    $(function () {
        var a=<%= a%>;
        //让层隐藏
        $("#f").hide();
        //$(".defaultButton").hide()
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
        //删除现有图片的处理
        $(".delButton").click(function (){
            //将要删除的图片地址存于Hidden控件的value中，以备服务器端删除
            var h=$("#Hidden1").attr("value");
            var src=$(this).parent().find(".pic").attr("src");
            $("#Hidden1").attr("value",h+";"+src);
            //处理如果删除的是默认图片的处理
            if($("#HiddenDefault").val()==src)
                $("#HiddenDefault").val("");
            //    $("#HiddenDefault").val()="";
            //图片删除后，腾出的位置用于上传新的控件
            a++;
            alert($("#Hidden1").val())
            //在客户端删除图片
            $(this).parent().remove();
            //alert($("#HiddenDefault").val());
            //alert($(this).parent().find(".pic").attr("src"));
            //alert($("#Hidden1").attr("value"));
            
        });
        //*/
        
        $(".pic").click(function(){
            window.open($(this).attr("src"),"_blank")
            //alert($(this).attr("src"));
        })
        //下拉框改变的处理
        $("#DropDownList1").change(function(){
            if ($(this).val()=="1")
                $(".defaultButton").show();
            else
            {
                $(".defaultButton").hide();
                //将HiddenDefault值清空（？有没有必要？）
                //$("#HiddenDefault").val("");
            };
            //alert($(this).val());
        })
        
        //设为默认的处理
        $(".defaultButton").click(function(){
            $(".divpic").css('background-color','white');
            $(this).parent().css('background-color','yellow');
            $("#HiddenDefault").val($(this).parent().find(".pic").attr("src"));
            //$("#HiddenDefault").attr("value",$(this).parent().find(".pic").attr("src"));
            alert($("#HiddenDefault").val());
            //alert($(this).parent().find(".pic").attr("src"));
        })
    })
</script>
