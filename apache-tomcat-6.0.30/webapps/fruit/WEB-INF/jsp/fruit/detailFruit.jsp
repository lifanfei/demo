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
    
    <title>My JSP 'detailFruit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/editTablestyles.css">
	

  </head>
  
  <body style="background-color: #ffffcc">
   	<table id="ajaxtable" align="center">
				<tr>
					<th class="textright">
						水果名称：
					</th>
					<td class="textleft">
						 ${vo.fname}	
					</td>
					
				</tr>
				<tr>
					<th class="textright">
						水果品种：
					</th>
					<td class="textleft">
						${vo.ftype}
					</td>
					
				</tr>
				<tr>
					<th class="textright">
						库存量：
					</th>
					<td class="textleft">
						${vo.fcount}
					</td>
					
				</tr>
				<tr>
					<th class="textright">
						产地：
					</th>

					<td class="textleft">
						${vo.originname}
					</td>
					
				</tr>
				<tr>
					<th class="textright">
						价格(元)/斤：
					</th>
					<td class="textleft">
						${vo.price}元
					</td>
					
				</tr>
				<tr>
				    <th class="textright">
						存放地点：
					</th>
					<td class="textleft">
					
					${vo.depotname}
                     
					

					</td>
					
				</tr>
				<tr>

					<td colspan="3" align="center">
						 <input type="button" value="返回" onclick="window.history.go(-1);"/>
					</td>
				</tr>



			</table>
  </body>
</html>
