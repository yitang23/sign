<%@page import="com.action.bean.ActionBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
    String tid=request.getParameter("tid");
   	session.setAttribute("tid", tid);
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="http://localhost:8080/news/css/style.css">

<title>管理员信息</title>
</head>
<body>

<div class="main-frame">
<jsp:include page="top.jsp"></jsp:include>
<jsp:include page="left.jsp"></jsp:include>
<div class="right">
<div class="admin">
<h1 class="title">后台主页面</h1>

<div class="welcome"><img src="../images/1.png"></div>
</div>
</div>
</div>
<jsp:include page="bottom.jsp"></jsp:include>


</body>
</html>