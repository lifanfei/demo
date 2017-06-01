<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<%
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragrma","no-cache");
	response.setDateHeader("Expires",0);
	%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0"> 
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
#center{
background:url(img/slide-5.jpg) no-repeat;background-size:100% 100%;


}
#beijing{
background:url(img/tu2.png) no-repeat;background-size:100% 100%;;
}
#ba{
background:url(img/tu.jpg)no-repeat;background-size:100% 100%;
}
#bss{
background:url(img/wwtu.jpg)no-repeat;background-size:100% 100%;
}

</style>
  </head>
  	<frameset rows="25%,*" frameborder="0">
  		<frame id="beijing" src="toTop.action"  frameborder="0" />
  	 <frameset  cols="20%,*,20%">
  		<frame id="ba"/> 
  		<frame id="" src="toRight.action" name="right"/>
  		<frame id="bss"/> 
  	 </frameset>
  	</frameset>
  <body>
    This is my JSP page. <br>
  </body>
</html>
