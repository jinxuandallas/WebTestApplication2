﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Slide.aspx.cs" Inherits="WebTestApplication2.JQueryTest.Slide" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Language" content="zh-CN"/>
<meta name="Keywords" content="SuperSlide,jQuery焦点图/幻灯片"/>
<meta name="Description" content="SuperSlide 致力于解决网站大部分特效展示问题，使网站代码规范整洁，方便维护更新。网站上常用的“焦点图/幻灯片”、“Tab标签切换”、“图片滚动”、“无缝滚动”等等只需要一个SuperSlide即可解决！还可以多个SuperSlide组合创造更多效果"/>
<title>SuperSlide - 焦点图/幻灯片</title>
<script type="text/javascript" src="../scripts/jquery1.42.min.js"></script><script type="text/javascript" src="../scripts/jquery.SuperSlide.2.1.1.js"></script>

    
		<style type="text/css">
		/* css 重置 */
		*{margin:0; padding:0; list-style:none; }
		body{ background:#fff; font:normal 12px/22px 宋体;  }
		img{ border:0;  }
		a{ text-decoration:none; color:#333;  }

		/* 本例子css */
		.slideBox{ width:450px; height:230px; overflow:hidden; position:relative; border:1px solid #ddd;  }
		.slideBox .hd{ height:15px; overflow:hidden; position:absolute; right:5px; bottom:5px; z-index:1; }
		.slideBox .hd ul{ overflow:hidden; zoom:1; float:left;  }
		.slideBox .hd ul li{ float:left; margin-right:2px;  width:15px; height:15px; line-height:14px; text-align:center; background:#fff; cursor:pointer; }
		.slideBox .hd ul li.on{ background:#f00; color:#fff; }
		.slideBox .bd{ position:relative; height:100%; z-index:0;   }
		.slideBox .bd li{ zoom:1; vertical-align:middle; }
		.slideBox .bd img{ width:450px; height:230px; display:block;  }

		/* 下面是前/后按钮代码，如果不需要删除即可 */
		.slideBox .prev,
		.slideBox .next{ position:absolute; left:3%; top:50%; margin-top:-25px; display:block; width:32px; height:40px; background:url(../images/slider-arrow.png) -110px 5px no-repeat; filter:alpha(opacity=50);opacity:0.5;   }
		.slideBox .next{ left:auto; right:3%; background-position:8px 5px; }
		.slideBox .prev:hover,
		.slideBox .next:hover{ filter:alpha(opacity=100);opacity:1;  }
		.slideBox .prevStop{ display:none;  }
		.slideBox .nextStop{ display:none;  }

		</style>
</head>

<body>
    


        <form id="form1" runat="server">
		<div id="slideBox" class="slideBox">
			<div class="hd">
				<asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate><li><%# Container.DataItem %></li></ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
			</div>
			<div class="bd">
				<asp:Repeater ID="Repeater2" runat="server">
            <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate><li><a href="http://www.SuperSlide2.com" target="_blank"><img src="../Images/pic<%# Container.DataItem.ToString() %>.jpg" /></a></li></ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
			</div>

			<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
			<a class="prev" href="javascript:void(0)"></a>
			<a class="next" href="javascript:void(0)"></a>

		</div>
             </form>
		<script type="text/javascript">
		jQuery(".slideBox").slide({mainCell:".bd ul",autoPlay:true});
		</script>

   

</body>
</html>
<script type="text/javascript">
//百度统计代码
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fa630f96b6a9dd549675d26373853f7f1' type='text/javascript'%3E%3C/script%3E"));
</script>

