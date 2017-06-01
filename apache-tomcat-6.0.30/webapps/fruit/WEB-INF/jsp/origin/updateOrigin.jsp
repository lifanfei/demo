<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateOrigin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/editTablestyles.css">
	<script type="text/javascript" src="<%=path %>/js/jquery-1.5.2.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/listTable.js"></script>
	<script type="text/javascript">
		function saveOrigin(){
			var name = document.getElementById("originname").value;
			if(name==""){
				document.getElementById("resultOrigin").innerHTML="产地名称不能为空！";
				return false;
			}else if(name.length>20){
				document.getElementById("resultOrigin").innerHTML="产地名称不能超过20位！";
				document.getElementById("originname").value="";
				return false;
			}else{
				document.getElementById("saveForm").action="doUpdateOrigin.action";
				document.getElementById("saveForm").submit();
			}
		}
		function focusOriginname(){
			document.getElementById("resultOrigin").innerHTML="";
		}
	</script>
  </head>
  
  <body style="background-color: #ffffcc">
    <form action="" method="post" id="saveForm">
    	<table id="ajaxtable" align="center">
    		<tr>
    			<th align="right" width="30%">产地名称：</th>
    			<td width="40%" align="left">
    				<input onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))" onfocus="focusOriginname();" id="originname" type="text" name="originname" value="${origin.originname}">
    				<input type="hidden" name="originid" value="${origin.originid}">
    			</td>
    			<td id="resultOrigin"></td>
    		</tr>
    		<tr>
    			<td align="center" colspan="3">
    				<input type="button" value="保存产地信息" onclick="saveOrigin();">
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
