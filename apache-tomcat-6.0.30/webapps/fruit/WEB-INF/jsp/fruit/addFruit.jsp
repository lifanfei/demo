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
    
    <title>My JSP 'addFruit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/editTablestyles.css">
	<script type="text/javascript">
	function blurName(){
		var name = document.getElementById("fruitname").value;
			if(name==""){
				document.getElementById("resultName").innerHTML="请输入水果名称！";
				return false;
			}else if(name.length>10){
				document.getElementById("resultName").innerHTML="水果名称不能大于10位！";
				document.getElementById("fruitname").value="";
				return false;
			}else{
				return true;
			}
	}
	function focusName(){
		document.getElementById("resultName").innerHTML="";
	}
	function blurType(){
		var type = document.getElementById("ftype").value;
			if(type==""){
				document.getElementById("resultType").innerHTML="请输入水果品种！";
				return false;
			}else if(type.length>10){
				document.getElementById("resultType").innerHTML="水果品种不能大于10位！";
				document.getElementById("ftype").value="";
				return false;
			}else{
				return true;
			}
	}
	function focusType(){
		document.getElementById("resultType").innerHTML="";
	}
	function blurCount(){
		var count = document.getElementById("count").value;
			if(count<=0){
				document.getElementById("resultCount").innerHTML="库存量输入不合理！";
				return false;
			}
			if(count==""){
				document.getElementById("resultCount").innerHTML="请输入库存量！";
				return false;
			}else if(count.length>5){
				document.getElementById("resultCount").innerHTML="库存量不能超过5位！";
				document.getElementById("count").value="";
				return false;
			}else{
				return true;
			}
	}
	function focusCount(){
		document.getElementById("resultCount").innerHTML="";
	}
	function blurOrigin(){
		var origin = document.getElementById("origin").value;
			if(origin=="00"){
				document.getElementById("resultOrigin").innerHTML="请选择产地！";
				return false;
			}else{
				return true;
			}
	}
	function focusOrigin(){
		document.getElementById("resultOrigin").innerHTML="";
	}
	function blurPrice(){
		var price = document.getElementById("price").value;
			if(price=="00"){
				document.getElementById("resultPrice").innerHTML="请选择价格！";
				return false;
			}else{
				return true;
			}
	}
	function focusPrice(){
		document.getElementById("resultPrice").innerHTML="";
	}
	function blurDepot(){
		var depot = document.getElementById("depot").value;
			if(depot=="00"){
				document.getElementById("resultDepot").innerHTML="请选择存放库位！";
				return false;
			}else{
				return true;
			}
	}
	function focusDepot(){
		document.getElementById("resultDepot").innerHTML="";
	}
	function saveFruit(){
		if(blurName() && blurType() && blurCount() && blurOrigin() && blurPrice() && blurDepot()){
			document.getElementById("fruitForm").action="doAddFruit.action";
			
		}else{
			 return false;
		}
	}
	
	
	</script>
	

  </head>
  
  <body style="background-color: #ffffcc">
  <form action="" method="post" onsubmit="return saveFruit();" id="fruitForm">
			<table id="ajaxtable" align="center">
				<tr>
					<th class="textright">
						水果名称：
					</th>
					<td class="textleft">
					
					  <input onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))" type="text" name="fruitname" id="fruitname" onblur="blurName();" onfocus="focusName();"/>
					</td>
					<td id="resultName"></td>
				</tr>
				<tr>
					<th class="textright">
						水果品种：
					</th>
					<td class="textleft">
						<input onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))" id="ftype" onblur="blurType();" onfocus="focusType();" type="text" name="ftype" />
					</td>
					<td id="resultType"></td>
				</tr>
				<tr>
					<th class="textright">
						库存量(kg)：
					</th>
					<td class="textleft">
						<input onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" id="count" onblur="blurCount();" onfocus="focusCount();" type="text" name="fcount" />
					</td>
					<td id="resultCount"></td>
				</tr>
				<tr>
					<th class="textright">
						产地：
					</th>

					<td class="textleft">
						<select id="origin" onblur="blurOrigin();" onfocus="focusOrigin();" class="selecttext" name="originid">
							<option value="00">
								--请选择--
							</option>
						  <c:forEach var="origin" items="${olist}">
						    <option value="${origin.originid}">${origin.originname}</option>
						  
						  </c:forEach>	
					</select>
					</td>
					<td id="resultOrigin"></td>
				</tr>
				<tr>
					<th class="textright">
						价格/斤：
					</th>
					<td class="textleft">
						<select id="price" onblur="blurPrice();" onfocus="focusPrice();" class="selecttext" name="priceid">
							<option value="00">
								--请选择--
							</option>
						  <c:forEach var="price" items="${plist}">
						    <option value="${price.priceid}">${price.price}</option>
						  
						  </c:forEach>	
					</select>
					</td>
					<td id="resultPrice"></td>
				</tr>
				<tr>
				    <th class="textright">
						存放地点：
					</th>
					<td class="textleft">
					<select id="depot" onblur="blurDepot();" onfocus="focusDepot();" class="selecttext" name="depotid">
							<option value="00">
								--请选择--
							</option>
						  <c:forEach var="depot" items="${dlist}">
						    <option value="${depot.depotid}">${depot.depotname}</option>
						  
						  </c:forEach>	
					</select>

					</td>
					<td id="resultDepot"></td>
				</tr>
				<tr>

					<td colspan="3" align="center">
						<input type="submit" value="保存水果信息" />
					</td>
				</tr>



			</table>


		</form>
    
  </body>
</html>
