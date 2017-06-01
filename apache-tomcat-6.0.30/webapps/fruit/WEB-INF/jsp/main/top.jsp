<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/editTablestyles.css">
	-->
	<style type="text/css">
		h1{
			color:#696969;
		}
		h4{
			color: #FF00FF
		}
		#div1{
			width:100%;
			height:32%;	
			
			
		}
		
		.div11 h1{
		width:100%;
		height:10%;
	    font-style:oblique;
		color:black;
		
		}
		.div11  b{
		color:#99cc00;
		
		font-weight: 900
		
		}
		.div2 h1{
			width:100%;
			height:20%;
			margin:0px auto;
			color:black;
			font-family:"幼圆";
		}
		
		.div4{
			width:100%;
			height:55px;
			background-color:#666;
			margin-top:40px;
			
		}
		a{
			text-decoration: none;
			color:white;
		}
		a:hover{
		color:#000;
		
		}
		.menu ul li{
		height:40px;
		float:left;
		list-style:none;
		padding-left:25px;
		padding-right:25px;
		font-size:20px;
		font-family:"幼圆";
		font-weight:bold;
		padding-top:15px;
		
		
		}
		
		li:hover{
		background:url(img/tiao.png) repeat-x;
		font-size:20;
		
		}
		.menu{
		width:50%;
		height:50px;
		
		margin:0px auto;
		}

		
	</style>
  </head>
  
  <body >
  
  	<div id="div1">
  	<div class="div11">
  		<h1 class="oblique">Team <img src="img/logo-icon.png" alt="" /><b>mzjw</b></h1>
  	</div>
  		<div class="div2" >
  			<h1 align="center" style="margin-top: 20px" >欢迎${fruit.nickname}登录水果管理系统</h1>
  				
  		</div>
  	
  	
   
  	</div>
  		<div class="div4">
  		<c:if test="${fruit.userroles eq '01'}">
  		<div class="menu">
  		<ul>
  		<li><a href="doListFruit.action" target="right" >水果列表</a></li>
	    <li><a href="doListDepotnum.action" target="right">库位信息</a></li>
	    <li><a href="doListPrice.action" target="right">价钱信息</a></li>
	    <li><a href="doListOrigin.action" target="right">产地信息</a></li>
        <li><a href="index.jsp" target="_top">退出系统</a>
        </ul>
        </div>
        </c:if>
        <c:if test="${fruit.userroles eq '02'}">
  		<div class="menu">
  		<ul>
  		<li><a href="doListFruit.action" target="right" >水果列表</a></li>
	    <li><a href="doListDepotnum.action" target="right">库位信息</a></li>
	    <li><a href="doListPrice.action" target="right">价钱信息</a></li>
        <li><a href="index.jsp" target="_top">退出系统</a>
        </ul>
        </div>
        </c:if>
        <c:if test="${fruit.userroles eq '03'}">
  		<div class="menu">
  		<ul>
  		<li><a href="doListFruit.action" target="right" >水果列表</a></li>
        <li><a href="index.jsp" target="_top">退出系统</a>
        </ul>
        </div>
        </c:if>
  		</div>
  
  	</div>
  </body>
</html>
