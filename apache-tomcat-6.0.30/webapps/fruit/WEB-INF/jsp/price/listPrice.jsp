<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listPrice.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/editTablestyles.css">
	<script type="text/javascript" src="<%=path %>/js/jquery-1.5.2.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/listTable.js"></script>
	

  </head>
  
  <body style="background-color: #ffffcc">
    	<form action="ToAddPrice.action" method="post">
  		<table id="ajaxtable" align="center">
  		<tr>
  			<th >价钱编号</th>
  			<th >价钱(元)</th>
  			<th >操作</th>
  		</tr>
  		<c:forEach var="price" items="${list}">
  		<tr>
  			<td align="center">${price.priceid}</td>
  			<td align="center">${price.price }</td>
  			<td align="center">
  				<a href="doDetailPrice.action?priceid=${price.priceid}" >查看</a>
  				<a href="toUpdatePrice.action?priceid=${price.priceid }" >修改</a>
  				<a href="doDeletePrice.action?priceid=${price.priceid } "onclick="return confirm('确认删除吗？')" >删除</a>
  			</td>
  		</tr>
  		</c:forEach>
  		<tr>
  			<td colspan="3" align="center">
  				<input type="submit" value="新增价钱信息" />
  			</td>
  		</tr>
  		</table> 
  		</form>
  </body>
</html>
