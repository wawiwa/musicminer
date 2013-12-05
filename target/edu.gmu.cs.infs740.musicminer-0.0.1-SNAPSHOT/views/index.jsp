<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="<%=request.getContextPath()%>/resources/jQueryAssets/jquery.ui.core.min.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/jQueryAssets/jquery.ui.theme.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/resources/jQueryAssets/jqsimplemenu.css"/>
<script src="<%=request.getContextPath()%>/resources/jQueryAssets/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/jQueryAssets/jqsimplemenu.js" type="text/javascript"></script>
<script type="text/javascript">
      $(function() {
           $('.jq-menu').jqsimplemenu(); 
       });
    </script>
<meta name="Welcome to our Music Database World" content="" />
<meta name="description" content="Welcome to Our Music Database World" />
</head>

<body bgcolor="#006600">
<form id="form1" name="form1" method="post" action="">
  <p>
  	<img src="<%=request.getContextPath()%>/resources/img/gmu1.jpg" width="629" height="355"  alt=""/>
  	<img src="<s:url value='/resources/img/gmu1.jpg'/>" width="48" height="48"/>
  </p>
  <% System.out.println("context path: "+request.getContextPath()); %>
	<h3>${pageContext.request.contextPath}</h3>
  <h1>Welcome to Our Music Database World! </h1>
  

  <div class="contentcontainer" style="margin-top:100px; width:950px">
    <div>
      <ul class="jq-menu">
      	<li><a href="<s:url value="/search"/>"> <font color="#FF9900">Old Search </font></a></li>
       	<li><a href="userlogin.jsp"> <font color="#FF9900">User Login </font></a></li>
		<li><a href="registration.jsp"><font color="#FF9900">Registration</font></a></li>
		<li><a href="musicsearch.jsp"><font color="#FF9900">Music Search</font></a></li>
      </ul>
    </div>
        
    <br/>
    
    
   
    
    <div class="header-body"></div>
    
  </div>
<div></div>
</form>
</body>
</html>
