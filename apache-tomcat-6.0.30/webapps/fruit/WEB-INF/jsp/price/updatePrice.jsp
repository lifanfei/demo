<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatePrice.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/editTablestyles.css">
	<script type="text/javascript" src="<%=path %>/js/jquery-1.5.2.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/listTable.js"></script>
	<script type="text/javascript">
		function updatePrice(){
			var price = document.getElementById("price").value;
				if(price<=0){
					document.getElementById("resultPrice").innerHTML="价钱输入不合理！";
					return false;
				}
				if(price==""){
					document.getElementById("resultPrice").innerHTML="价格不能为空！";
					return false;
				}else if(price.length>4){
					document.getElementById("resultPrice").innerHTML="价格不能超过4位!";
					document.getElementById("price").value="";
					return false;
				}else{
					document.getElementById("bbb").action="doUpdatePrice.action";
					document.getElementById("bbb").submit();
				}
		}
		function focusPrice(){
			document.getElementById("resultPrice").innerHTML="";
		}
	</script>

  </head>
  
  <body style="background-color: #ffffcc">
    	<form id="bbb"action="" method="post">
    	<table id="ajaxtable" align="center">
    		<tr>
    			<th align="right" width="30%">价钱:</th>
    			<td align="left" width="40%">
    				<input id="price"  type="text" onchange="if(/\D/.test(this.value)){alert('只能输入数字');this.value='';}"    onfocus="focusPrice();" name="price" value="${price.price}"/>
    				<input type="hidden" name="priceid" value="${price.priceid}"/>
    			</td>
    			<td id="resultPrice"></td>
    		</tr>
    		<tr>
    			<td colspan="3" align="center">
    				<input type="button" value="修改" onclick="return updatePrice();">
    			</td>
    		</tr>
    	</table>
    	</form>
  </body>
</html>
