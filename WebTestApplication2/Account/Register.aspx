<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebTestApplication2.Account.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
   
<body>
    <!-- 
    <script>
        var xmlHttp;
        function createXMLHttpRequest()

        {
            if (window.ActiveXObject)

            {
                  xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
             }
               else if(window.XMLHttpRequest)
                   {
                       xmlHttp = new XMLHttpRequest();
                    }
        }

        function CheckUsername()
        {
                createXMLHttpRequest();
                var strName=document.getElementById("UserName").value;
                var url= "AjaxHandler1.ashx?strUsername="+strName;
                xmlHttp.open("GET",url,true);
                xmlHttp.onreadystatechange=ShowResult;
                xmlHttp.send(null);
        }
        function ShowResult() {
            if (xmlHttp.readyState == 4) {
                if (xmlHttp.status == 200) {
                    var bRet = xmlHttp.responseText;
                    if (bRet == "0") {
                        msg.innerHTML = '用户名存在！';
                        msg.style.color = 'green';
                    }
                    else if (bRet == "1") {
                        msg.innerHTML = '用户名长度必须在3到15之间，且不包含字母、数字和下划线以外的字 符！';
                        msg.style.color = 'red';
                    }
                    else {
                        msg.innerHTML = '用户名不存在！';
                        msg.style.color = 'red';
                    }
                }
            }
        }
    </script> -->
    <form id="form1" runat="server">
    <div>
    
        用户名：<br />
        密码：<br />
        <br />
        <asp:Button ID="CreateUser" runat="server" OnClick="Button1_Click" Text="注册" />
    
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                用户名：<br /> 
                <asp:TextBox ID="UserName" runat="server" AutoPostBack="True" OnTextChanged="UserName_TextChanged"></asp:TextBox>
                <!--<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" onblur="alert('xx')" OnTextChanged="UserName_TextChanged"></asp:TextBox>-->
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                密码：<br /> 
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
