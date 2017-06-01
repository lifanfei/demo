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
    
    <title>My JSP 'listDepotnum.jsp' starting page</title>
    
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
    
   <form action="toAddDepotnum.action" method="post">
    <table id="ajaxtable" align="center">
    <tr>
    <th>库位编号</th>
    <th>库位名称</th>
    <th>操作</th>
    </tr>
     <c:forEach var="depotnum" items="${dlist}">
     <tr>
     <td align="center">${depotnum.depotid }</td>
     <td align="center">${depotnum.depotname }</td>
     <td align="center">
     <a href="doDetailDepotnum.action?depotid=${depotnum.depotid}">查看</a>
     <a href="toUpdateDepotnum.action?depotid=${depotnum.depotid }">修改</a>
     <a href="doDeleteDepotnum.action?depotid=${depotnum.depotid }" onclick="return confirm('确认删除该库位吗?');">删除</a>
     </td>
   </tr>
     </c:forEach>
    <tr>
    <td  align="center" colspan="3">
    <input type="submit" value="新增库位信息"/>
    </td>
    </tr>
   </table>
    </form>
  </body>
</html>
  
