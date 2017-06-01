<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listOrigin.jsp' starting page</title>
    
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
    <form action="toAddOrigin.action" method="post">
    	<table id="ajaxtable" align="center">
    		<tr>
    			<th>产地编号</th>
    			<th>产地名称</th>
    			<th>操作</th>
    		</tr>
    		<c:forEach var="origin" items="${olist}">
    			<tr>
    				<td align="center">${origin.originid}</td>
    				<td align="center">${origin.originname}</td>
    				<td align="center">
    					<a href="doDetailOrigin.action?originid=${origin.originid}">查看</a>
    					<a href="toUpdateOrigin.action?originid=${origin.originid}">修改</a>
    					<a href="doDeleteOrigin.action?originid=${origin.originid}" onclick="return confirm('确定删除该产地吗？')">删除</a>
    				</td>
    			</tr>
    		</c:forEach>
    		
    		<tr>
    			<td align="center" colspan="3">
    				<input type="submit" value="新增产地">
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
