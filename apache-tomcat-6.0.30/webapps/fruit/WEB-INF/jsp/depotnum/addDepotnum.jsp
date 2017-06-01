<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addDepotnum.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/editTablestyles.css">
	
<script type="text/javascript">
	function focusByDepotnum(){
		document.getElementById("resultDepotnum").innerHTML="";
	return false;
	}
	function saveDepot(){
		var dname=document.getElementById("depotname").value;
	if(dname==""){
		document.getElementById("resultDepotnum").innerHTML="请输入库位名称";
		return false;
	}
		if(dname.length>10){
			document.getElementById("resultDepotnum").innerHTML="库位名称不能大于10位";
			document.getElementById("depotname").value="";
			return false;
		}else{
			document.getElementById("depotnumForm").action="doAddDepotnum.action";
			
		}
	}
	</script>
  </head>
  
  <body style="background-color: #ffffcc">
   <form id="depotnumForm" action="" method="post" onsubmit="return saveDepot();">
   <table id="ajaxtable" align="center">
   <tr>
   <th width="35%" align="right" >
    库位名称：
   </th>
   <td width="35%" align="left">
   <input  onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))"  id="depotname" type="text"  name="depotname">
   </td>
   <td id="resultDepotnum"></td>
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
