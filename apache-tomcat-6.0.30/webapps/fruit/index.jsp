<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="assets/css/plugin/font-awesome.min.css" rel="stylesheet" type="text/css">  

        <!-- CSS Global -->
        <link href="assets/css/plugin/bootstrap.min.css" rel="stylesheet" type="text/css">  
           
        
        
        <link href="assets/css/plugin/subscribe-better.css" rel="stylesheet" type="text/css"> 

        <!-- Custom CSS -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
        <!-- Color CSS --> 

        <!--[if lt IE 9]>
        <script src="assets/js/plugin/html5shiv.js"></script>
        <script src="assets/js/plugin/respond.js"></script>
        <![endif]--> 
         
        <style type="text/css">
		.login{
			width:400px;
			height:300px;
			background:url(img/subscribe.jpg)no-repeat;
			position:absolute;
			margin-top:-1200px;
			margin-left:550px;
			border-top-right-radius:20px;
			border-top-left-radius:20px;
			border-bottom-right-radius:20px;
			border-bottom-left-radius:20px;
			display:none;
			}
		.top{
			width:400px;
			height:50px;
			font-size:24px;
			font-family:"幼圆";
			border-top-right-radius:20px;
			border-top-left-radius:20px;
			
			}
		.close{
			text-align:right;
			padding-right:20px;
			line-height:70px;
			font-weight:bold;
			
			}
		.tip{
			padding-left:140px;
			line-height:70px;
			}
		.menu{
			width:95%;
			height:220px;
			
			margin:0px auto;
			margin-top:20px;
			
			
			}
			.t{
				font-size:10px;
				}
		.denglu{
			width:150px;
			height:40px;
			border-top-right-radius:20px;
			border-top-left-radius:20px;
			border-bottom-right-radius:20px;
			border-bottom-left-radius:20px;
			border:0px;
			
			}
		</style>
        <script type="text/javascript">
        function onload(){
		var msg="${msg}";
		var rows = "${rows}";
		if(msg.length>0){
			alert(msg);
		}
		if(rows>0){
			alert('注册成功！');
		}
	}
		function show(){
			document.getElementById("login").style.display="block";
		
		}
		function lclose(){
			document.getElementById("login").style.display="none";
			
			}
		function show1(){
			document.getElementById("add").style.display="block";
		
		}
		function lclose1(){
			document.getElementById("add").style.display="none";
			
			}
    function focusByUsername(){
		document.getElementById("username").value="";
		document.getElementById("resultUsername").innerHTML="";
	}
	function focusByPassword(){
		document.getElementById("password").value="";
		document.getElementById("resultPassword").innerHTML="";
	}
	function focusByReqCode(){
		document.getElementById("reqCode").value="";
		document.getElementById("resultReqCode").innerHTML="";
	}
	function blurByUsername(){
		var uname=document.getElementById("username").value;
		if(uname==""){
		document.getElementById("resultUsername").innerHTML="请输入用户名";
		return false;
		}
		if(uname.length>10){
			document.getElementById("resultUsername").innerHTML="用户名不能大于10位";
			document.getElementById("username").value="";
		return false;
		}else{
			document.getElementById("resultUsername").innerHTML="OK";
			return true;
		}
	}
	function blurByPassword(){
		var pwd=document.getElementById("password").value;
		if(pwd==""){
		document.getElementById("resultPassword").innerHTML="请输入密码";
		return false;
		}
		if(pwd.length>10){
			document.getElementById("resultPassword").innerHTML="密码不能大于10位";
			document.getElementById("password").value="";
		return false;
		}else{
			document.getElementById("resultPassword").innerHTML="OK";
			return true;
		}
	}
	function blurByReqCode(){
		var reqCode=document.getElementById("reqCode").value;
		if(reqCode==""){
		document.getElementById("resultReqCode").innerHTML="请输入验证码";
		return false;
		}
		if(reqCode.length>4){
			document.getElementById("resultReqCode").innerHTML="验证码不能大于4位";
			document.getElementById("reqCode").value="";
		return false;
		}else{
			document.getElementById("resultReqCode").innerHTML="OK";
			return true;
		}
	}
	
	<!--注册-->
	  
	  function blurByUsername1(){
		   var username=document.getElementById("username1").value;
		    
		   if(username==""){
			   document.getElementById("resultUsername1").innerHTML="用户名不能为空！";
			   return false;
		   }
		   if(username.length>10){
			   document.getElementById("resultUsername1").innerHTML="输入的用户名为10位之内！";
			   return false;
		   }else{
			   document.getElementById( "resultUsername1").innerHTML="此用户名可用！"; 
			   return true;
		   }
	  }
	  function blurByPassword1(){
		   var password1=document.getElementById("password1").value;
		   if(password1==""){
			   document.getElementById("resultPassword1").innerHTML="密码名不能为空！";
			   return false;
		   }
		   if(password1.length>10){
			   document.getElementById("resultPassword1").innerHTML="输入的密码名为10位之内！";
			   return false;
		   }else{
			   document.getElementById( "resultPassword1").innerHTML="此密码名可用！";  
			   return true;
		   }
	  }
	 
	  function blurByPassword2(){
		   var password1=document.getElementById("password1").value;
		   var password2=document.getElementById("password2").value;
		   if(password2==""){
			   document.getElementById("resultPassword2").innerHTML="确定密码名不能为空！";
			   return false;
		   }
		   if(password2.length>10){
			   document.getElementById("resultPassword2").innerHTML="输入的密码名为10位之内！";
			   return false;
		   }else if(password2!=password1){
			     document.getElementById("resultPassword2").innerHTML="密码输入错误！";
			      return false
			   }else{
			   document.getElementById( "resultPassword2").innerHTML="此用户密码正确！";  
			   return true;
		   }
	  }
	  function blurByNickname(){
		   var nickname=document.getElementById("nickname").value;
		   if(nickname==""){
			   document.getElementById("resultNickname").innerHTML="用户昵称名不能为空！";
			   return false;
		   }
		   if(nickname.length>10){
			   document.getElementById("resultNickname").innerHTML="输入的用户昵称名为10位之内！";
			   return false;
		   }else{
			   document.getElementById( "resultNickname").innerHTML="此用户昵称名可用！";  
			   return true;
		   }
	  }
	  
	  function focusByUsername1(){
		   document.getElementById( "username1").value="";
		   document.getElementById( "resultUsername1").innerHTML=""; 
	  }
	  function focusPassword1(){
		   document.getElementById( "password1").value="";
		   document.getElementById( "resultPassword1").innerHTML=""; 
		  
	  }
	  function focusPassword2(){
		   document.getElementById( "password2").value="";
		   document.getElementById( "resultPassword2").innerHTML=""; 
		  
	  }
	  function focusNickname(){
		    document.getElementById( "nickname").value="";
		   document.getElementById( "resultNickname").innerHTML="";
		  
	  }
	  function login(){
		if(blurByUsername()&&blurByPassword()&&blurByReqCode()){
			document.getElementById("loginForm").action="doLogin.action";
			
		}else{
			return false;
		}
		
	}
	  function addUser(){
		  if(blurByUsername1()&&blurByPassword1()&&blurByPassword2()&& blurByNickname()){
		    document.getElementById("addForm").action="doAddUser.action";
		  
		 
		  }else{
			  return false;
		  }
		    
	  }
	
	</script>
		<script type="text/javascript" src="<%=path%>/js/jquery-1.5.2.min.js"></script>
  
  		<script type="text/javascript" src="<%=path%>/js/login.js"></script>
		
  </head>
  
 <body id="home" class="wide" onLoad="onload();">

         

        <div id="loading">
            <div class="loader">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
        </div>

        <!-- WRAPPER -->
        <main class="wrapper home-wrap"> 
            <!-- CONTENT AREA -->

            <!-- Main Header Start 头部导航栏 -->
            <header class="main-header">                  
                <div class="container-fluid rel-div">
                    <div class="col-lg-4 col-sm-8">
                        <div class="main-logo">
                            <a href="javascript:void(0);"> <strong>mzjw<img src="assets/img/icons/logo-icon.png" alt="" /> </strong> <span class="light-font">farmfood</span>  </a>
                            <span class="medium-font">ORGANIC STORE</span>
                        </div>
                    </div>

                    <div class="col-lg-6 responsive-menu">  
                        <div class="responsive-toggle fa fa-bars"> </div>
                        <nav class="fix-navbar" id="primary-navigation">            
                            <ul class="primary-navbar">                                                
                                <li><a href="javascript:void(0);"> Home</a></li>
                                <li><a href="javascript:void(0);" onClick="show();">登录</a></li>
								<li><a href="javascript:void(0);" onClick="show1();">注册</a></li> 
								<li><a href="javascript:void(0);">帮助</a></li>        
								<li><a href="javascript:void(0);">开发者人员</a></li>
                            </ul>                           
                        </nav>
                    </div>

                    
         
            </header>
            <!-- / Main Header Ends头部导航栏结束 -->   

            <!-- Main Slider Start 主界面 -->
            <section class="main-slide">
                <img alt=".." src="assets/img/slider/slide-1.jpg" />
                <div class="tbl-wrp slide-1">
                    <div class="text-middle">
                        <div class="tbl-cell">
                            <div class="slide-caption container text-center">
                                <div class="slide-title">
                                    <img src="assets/img/icons/slide-txt-1.png" alt="" />
                                    <span>100% Guarantee</span>
                                </div>
                                <div class="slide-title2 pb-50">
                                    <h2 class="section-title"> <span class="light-font">Live </span> <strong>organic </strong> <span class="light-font">for live </span> <strong>healthy </strong> </h2>
                                    <h4 class="sub-title"> ORGANIC FRUITS, VEGETABLES, AND LOT MORE TO YOUR DOOR </h4>
                                </div>
                                <div class="slide">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- / Main Slider Ends主界面结束 -->   

          
            
                        

            

            

            
            

            
           

            <!-- / CONTENT AREA -->

            <!-- FOOTER尾部界面 -->
            <footer class="page-footer"> 
                <section class="sec-space light-bg">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-sm-12 footer-widget">
                                <div class="main-logo">
                                    <a> <strong>mzjw<img src="assets/img/icons/logo-icon.png" alt="" /> </strong> <span class="light-font">farmfood</span>  </a>
                                    
                                </div>
                                
                                <div class="text-widget">
                                    
                                    
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-4 footer-widget">
                                <h2 class="title-1"> <strong>开发人员 </strong> </h2>
                                <span class="divider-2"></span>
                                <ul class="list">
                                    
                                    <li> <a>景凡</a> </li>
                                   
                                    
                                </ul>
                            </div>
                            <div class="col-md-3 col-sm-4 footer-widget">
                                <h2 class="title-1"><strong>E-mail</strong> </h2>
                                <span class="divider-2"></span>
                                <ul class="list">
                                   
                                    <li><a>609987416@qq.com</a></li>
                                    
                                   
                                </ul>
                            </div>
                            
                </section>
                <section class="footer-bottom">
                    <div class="pattern"> 
                        <img alt="" src="assets/img/icons/white-pattern.png">
                    </div>
                    <div id="to-top" class="to-top"> <i class="fa fa-arrow-circle-o-up"></i> </div>
                    <div class="container ptb-50">
                        <div class="row">
                            
                </section>
            </footer>
            <!-- /FOOTER尾部界面结束 -->
           
        
		<!--页面弹出登录框-->
        <div class="login" id="login">
        <div class="top"><span class="tip">登 录 窗 口</span><span class="close" onClick="lclose();">×</span></div>
        <hr/>
        <div class="menu">
        <form id="loginForm" action ="" method="post" onSubmit="login();">
        <table border="0" width="100%" height="220px;">
        <tr>
        	<td width="30%" align="right">用户名：</td>
            <td width="30%"><input onBlur="blurByUsername();" onFocus="focusByUsername();" type="text" name="username" id="username"/></td>
            <td class="t" width="30%" align="left" id="resultUsername"></td>
        </tr>
        
        <tr>
       	    <td width="30%" align="right">密码：</td>
            <td width="30%"><input onBlur="blurByPassword();" onFocus="focusByPassword();" type="password" name="password" id="password"/></td>
            <td class="t" width="30%" align="left" id="resultPassword"></td>
        </tr>
         <tr>
       	    <td width="30%" align="right" >验证码：</td>
            <td width="30%"><input onBlur="blurByReqCode();" onFocus="focusByReqCode()" type="text" name="reqCode" id="reqCode"/></td>
            <td class="t" id="resultReqCode" ></td>
        </tr>
        <tr>
            <td  colspan="3" align="center"><img src="vcode.jsp"></td>
        </tr>
        
        <tr>
        	<td colspan="3" align="center"><input class="denglu" type="submit" value="登 录"/></td>
            
        </tr>
        
        </table>
        </form>
        </div>
        </div>
         
		<!--页面弹出注册框-->
        <div class="login" id="add">
        <div class="top"><span class="tip">注 册 窗 口</span><span class="close" onClick="lclose1();">×</span></div>
        <hr/>
        <div class="menu">
        <form id="addForm" action ="" method="post" onSubmit="return addUser();">
        <table border="0" width="100%" height="220px;">
     <tr>
      <td width="30%"  align="right" >用户名：</td>
      <td align="left" width="20%">
         <input onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" id="username1" onfocus="focusByUsername1();" onblur="blurByUsername1();" type="text" name="username1" style="width:150px"/>
      </td>
      <td class="t" id="resultUsername1"></td>
     </tr>
     <tr>
      <td width="20%" align="right">密码：</td>
      <td align="left">
       <input  onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" id="password1" onfocus="focusPassword1();" onblur="blurByPassword1();" type="password" name="password1" style="width:150px"/>
      </td>
      <td class="t" id="resultPassword1"></td>
     
     </tr>
     <tr>
      <td width="20%" align="right">确认密码：</td>
      <td align="left">
       <input  onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" id="password2" onfocus="focusPassword2();" onblur="blurByPassword2();" type="password" name="password2" style="width: 150px"/>
      </td>
      <td class="t" id="resultPassword2"></td>
     
     </tr>
     <tr>
      <td width="20%" align="right">用户昵称：</td>
      <td align="left">
        <input id="nickname" onfocus="focusNickname();" onblur="blurByNickname();" type="text" name="nickname" style="width: 150px"/>
      </td>
      <td class="t" id="resultNickname"></td>
     
     </tr>
      <tr>
        	<td colspan="3" align="center">
        		<input class="denglu" type="submit" value="注册"/>
        	</td>
            
      </tr>
         
        </table>
        </form>
        </div>
        </div>
        
        <!-- 页面弹出登陆框结束 -->

        <!-- JS Global -->
        <script src="assets/js/plugin/jquery-2.2.4.min.js"></script>   
       
        
       
        
        <script src="assets/js/plugin/jquery.subscribe-better.min.js"></script>

        <!-- Custom JS -->   
        <script src="assets/js/theme.js"></script>


    </body>
</html>