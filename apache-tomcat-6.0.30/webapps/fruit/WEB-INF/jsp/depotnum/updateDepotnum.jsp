<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateDepotnum.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 	<link rel="stylesheet" type="text/css" href="<%=path %>/css/editTablestyles.css">
	<script type="text/javascript">
		function login(){
			var dname=document.getElementById("depotnum").value;
	       		if(dname==""){
	       			document.getElementById("resultDepotnum").innerHTML="库位不能为空！";
	       			return false;
	       		}else if(dname.length>10){
	       			document.getElementById("resultDepotnum").innerHTML="库位长度不能超过20位！";
	       			document.getElementById("depotnum").value="";
	       			return false;
	       		}else{
					document.getElementById("updateForm").action="doUpdateDepotnum.action";
	       		}
			}
		function focusByDepotnum(){
			document.getElementById("resultDepotnum").innerHTML="";
		}
	</script>
  </head>
  
  <body style="background-color: #ffffcc">
  <form action="" method="post" id="updateForm" onsubmit="return login();">
   <table id="ajaxtable" align="center" width="97%" border="1">
   <tr>
   <th align="right" width="35%">库位名称</th>
   <td align="left">
   <input onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))" id="depotnum"  onfocus="focusByDepotnum();" type="text" name="depotname" value="${depotnum.depotname} ">
   <input type="hidden" name="depotid" value="${depotnum.depotid}">
   </td >
   <td id="resultDepotnum" width="45%"></td>
   </tr>
   <tr>
   <td align="center" colspan="3">
   <input type="submit" value="保存库位信息"/>
   </td>
   </tr>
   </table>
   </form>
  </body>
</html>
