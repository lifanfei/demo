<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addPrice.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/editTablestyles.css">
	<script type="text/javascript" src="<%=path %>/js/jquery-1.5.2.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/listTable.js"></script>
	<script type="text/javascript">
		function savePrice(){
			var name = document.getElementById("price").value;
			if(name<=0){
				document.getElementById("resultPrice").innerHTML="价钱输入不合理！";
				return false;
			}
			if(name==""){
				document.getElementById("resultPrice").innerHTML="请输入价格！";
				return false;
			}
			if(name.length>10){
				document.getElementById("resultPrice").innerHTML="价格必须是10位以内！";
				document.getElementById("price").value="";
				return false;
			}else{
				
				document.getElementById("addForm").action="doAddPrice.action";
				document.getElementById("addForm").submit();
				
			}
			
		}
		function focusPrice(){
			document.getElementById("resultPrice").innerHTML="";
		
	}
	</script>

  </head>
  		
  
  <body style="background-color: #ffffcc">
    	<form id="addForm" action="" method="post" onsubmit="return savePrice();">
    	<table id="ajaxtable" align="center">
    		<tr>
    			<th align="right" width="30%">价钱：</th>
    			<td align="left" width="40%">
    				<input type="text" id="price" name="price"  onchange="if(/\D/.test(this.value)){alert('只能输入数字');this.value='';}" onfocus="focusPrice(); "/>
    			</td>
    			<td id="resultPrice" ></td>
    		</tr>
    		<tr>
    			<td colspan="3" align="center">
    				<input type="submit" value="添加" >
    			</td>
    		</tr>
    	</table>
    	</form>
  </body>
</html>
