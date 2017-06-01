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
    
    <title>My JSP 'listFruit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/editTablestyles.css">
	<script type="text/javascript" src="<%=path %>/js/jquery-1.5.2.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/listTable.js"></script>
	<script type="text/javascript">
	 function addFruit(){
		  document.getElementById( "add").action="toAddFruit.action";
		  document.getElementById( "add").submit();
	 }
	 function queryFruit(){
		 document.getElementById( "add").action="doListFruit.action";
		 document.getElementById("pageNumber").value=1;
		  document.getElementById( "add").submit();
	 }
	 function gotoSelectedPage(){
			document.getElementById("add").action="doListFruit.action";
			document.getElementById("add").submit();
			
		}
		function toPage(pNumber){
			document.getElementById("add").action="doListFruit.action?pageNumber="+pNumber;
			document.getElementById("add").submit();
		}
	
	</script>
	

  </head>
  
  
  <body style="background-color: #ffffcc">
    <form id="add" action="" method="post">
    <table class="querytable" align="center">
    	<tr>
    		<th align="right">水果名称：</th>
    		<td width="30%" align="left">
    			<input type="text" name="fname">
    		</td>
    		<th align="right">产地名称：</th>
    		<td align="left">
    			<select name="origin">
    				<option value="00">--请选择--</option>
    				<c:forEach var="origin" items="${olist}">
    					<option value="${origin.originid}">${origin.originname}</option>
    				</c:forEach>
    			</select>
    		</td>
    	</tr>
    	<tr>
    		<td align="center" colspan="4">
    			<input type="button" value="查询水果信息" onclick="queryFruit();">
    		</td>
    	</tr>
    </table>
    <br>
    <table id="ajaxtable" align="center">
      <tr>
        <th>水果名称</th>
        <th>水果品种</th>
        <th>库存量(kg)</th>
        <th>产地</th>
        <th>价格/斤</th>
        <th>存放地点</th>
       <c:if test="${fruit.userroles eq '01'}"><th>操作</th></c:if> 
       <c:if test="${fruit.userroles eq '02'}"><th>操作</th></c:if> 
       <c:if test="${fruit.userroles eq '03'}"></c:if> 
      </tr>
      
      <c:forEach var="vo" items="${flist}">
     	<c:if test="vo==null">
     	<tr>
     		<td>jfjelf </td>
     	</tr>
     	</c:if>
      
      <c:if test="${vo.fid>0}">
      	<tr>
          <td>${vo.fname}</td>
          <td>${vo.ftype}</td>
          <td>${vo.fcount}</td>
          <td>${vo.originname}</td>
          <td>${vo.price}</td>
          <td>${vo.depotname}</td>
       <c:if test="${fruit.userroles eq '01'}">
         <td>
            <a href="doDetailFruit.action?id=${vo.fid}">查看</a>
            <a href="toUpdateFruit.action?id=${vo.fid}">修改</a>
            <a href="doDeleteFruit.action?id=${vo.fid}" onclick="return confirm('确定删除吗');">删除</a>
          </td>
       
       
       </c:if>   
       <c:if test="${fruit.userroles eq '02'}">
         <td>
            <a href="doDetailFruit.action?id=${vo.fid}">查看</a>
            <a href="toUpdateFruit.action?id=${vo.fid}">修改</a>
            <a href="doDeleteFruit.action?id=${vo.fid}" onclick="return confirm('确定删除吗');">删除</a>
          </td>
       </c:if>  
       <c:if test="${fruit.userroles eq '03'}">
       </c:if>    
       </tr>
      </c:if>
      
       
       
      
      </c:forEach>
      <!-- 分页 -->
				<tr>
					<td colspan="7">

						<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td width="50%">

									<span class="right-font08">共 ${page.totalPages} 页 | 第 ${page.pageNumber} 页</span>
								</td>
								<td width="49%" align="right">
									<span class="right-font08"> <a href="javascript:toPage(${1})">[  首页  </a> 
									<c:if test="${page.pageNumber>1}">
										<a href="javascript:toPage(${page.pageNumber-1})">上一页</a>
									</c:if> 跳转到第<select id="pageNumber" name="pageNumber" onchange="gotoSelectedPage();">
											<c:forEach begin="1" end="${page.totalPages}" step="1" var="pageIndex">
												<c:choose>
													<c:when test="${pageIndex eq page.pageNumber}">
														<option value="${pageIndex}" selected="selected">
															${pageIndex}
														</option>
													</c:when>
													<c:otherwise>
														<option value="${pageIndex}">
															${pageIndex}
														</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</select> 
										<c:if test="${page.pageNumber<page.totalPages}">
											<a href="javascript:toPage(${page.pageNumber+1})">下一页</a>
										</c:if> 
										<a href="javascript:toPage(${page.totalPages})">末页]</a> </span>
								</td>

							</tr>
						</table>

					</td>
				</tr>

				<!-- 分页结束 -->
    
       <tr>
         <td colspan="7" align="center">
            <input type="button" value="采购水果" onclick="addFruit()"/>
          </td>
       </tr>
    
    </table>
    </form>
  </body>
</html>
