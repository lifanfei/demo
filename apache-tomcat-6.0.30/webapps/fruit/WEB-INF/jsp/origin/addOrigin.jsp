<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addOrigin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/editTablestyles.css">
	<script type="text/javascript" src="<%=path %>/js/jquery-1.5.2.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/listTable.js"></script>
	
	<script type="text/javascript">
		
		function addOrigin(){
			var name = document.getElementById("originname").value;
			if(name==""){
				document.getElementById("resultOriginname").innerHTML="请输入产地名称！";
				return false;
			}
			if(name.length>20){
				document.getElementById("resultOriginname").innerHTML="产地名必须是20位以内！";
				document.getElementById("originname").value="";
				return false;
			}else{
				
				document.getElementById("addForm").action="doAddOrigin.action";
				document.getElementById("addForm").submit();
				
			}
			
		}
		function focusName(){
			document.getElementById("resultOriginname").innerHTML="";
		}
	</script>
	

  </head>
  
  <body style="background-color: #ffffcc">
    <form id="addForm" action="" method="post" onsubmit="return addOrigin();">
    	<table class="querytable" align="center">
    		<tr>
    			<th align="right" width="30%">产地名称：</th>
    			<td width="40%" align="left">
    				<input onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))"  type="text" name="originname" id="originname" onfocus="focusName();">
    			</td>
    			<td id="resultOriginname"></td>
    		</tr>
    		<tr>
    			<td align="center" colspan="3">
    				<input type="submit" value="保存产地名称">
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
