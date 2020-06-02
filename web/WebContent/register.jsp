<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String tishi=request.getParameter("tishi");
    String a="";
    if(tishi==null||tishi.equals("")){
    	a="";
    }
    else if(Integer.parseInt(tishi)==2){
    	a="用户名已经存在";
    }
   
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="http://localhost:8080/news/css/style.css">
<title>学生系统管理</title>
</head>
<body>
	<div class="register_title"><img src="images/2.png">
	</div>
	<div class="register_main">
		<div class="register_bg">
			<div class="register">
			<h2 >用户注册</h2>
  			<form action="registerServlet" method="post" id="frm" >
  			<label>&nbsp&nbsp&nbsp&nbsp手机号:</label>
  			<input type="text" name="tphone" id="tphone">
  			<p>
  			<label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp工号:</label>
  			<input type="text" name="tid" id="tid">
  			</p>
  			<p>
  			<label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp姓名:</label>
  			<input type="text" name="tname" id="tname">
  			</p>
  			<p>
  			<label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp密码:</label>
  			<input type="password" name=tpassword id="tpassword">
  			</p>
  			<p>
  			<label>确认密码:</label>
  			<input type="password" name="re_tpassword" id="re_tpassword">
  			</p>
  			<p><a class="register_button" href="javascript:void(0)" onclick="post()">确认</a></p>
			<p><span id="tishi" class="tishi"><%=a %></span></p>
			</form>
			</div>
		</div>
	</div>
	  <jsp:include page="admin/bottom.jsp"></jsp:include>
	 <script type="text/javascript">
	 function post(){
		 var tphone=document.getElementById("tphone").value;
		 var tid=document.getElementById("tid").value;
		 var tname=document.getElementById("tname").value;
		 var tpassword=document.getElementById("tpassword").value;
		 var re_tpassword=document.getElementById("re_tpassword").value;
		  document.getElementById("tishi").innerHTML="";
		  if(tphone == "" || tid == "" || tname==""||tpassword==""||re_tpassword==""){
			  document.getElementById("tishi").innerHTML="请将注册信息填写完整";
			  return;
		  }
		  else if(tpassword!=re_tpassword){
			  document.getElementById("tishi").innerHTML="两次密码输入不一致";
			  return;
		  }
		  document.getElementById("frm").submit();
	 }
	 </script>
</body>
</html>