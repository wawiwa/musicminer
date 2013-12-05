<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="jQueryAssets/jquery.ui.core.min.css" rel="stylesheet" type="text/css" />
<link href="jQueryAssets/jquery.ui.theme.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" media="screen" href="jQueryAssets/jqsimplemenu.css"/>
<link href="jquery.ui.button.min.css" rel="stylesheet" type="text/css" />
<script src="jQueryAssets/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="jQueryAssets/jqsimplemenu.js" type="text/javascript"></script>
<script src="jquery-ui-1.9.2.button.custom.min.js" type="text/javascript"></script>
<script type="text/javascript">
      $(function() {
           $('.jq-menu').jqsimplemenu(); 
       });
    </script>
<meta name="Welcome to our Music Database World" content="" />
<meta name="description" content="Welcome to Our Music Database World" />
</head>

<body bgcolor="#006600">
<h3>${pageContext.request.contextPath}</h3>
<s:url var="authUrl" value="/login/j_spring_security_check"/>
<form id="form1" name="form1" method="post" action="${authUrl}">
  <p><img src="/resources/img/gmu1.jpg" width="629" height="355"  alt=""/>
  <h1>User Login Page!</h1>
  <div class="contentcontainer" style="margin-top:100px; width:950px">
    <div>
     <ul class="jq-menu">
       <li><a href="userlogin.html"><font color="#FF9900">User Login </font></a></li>
           <li><a href="registration.html"><font color="#FF9900">Registration</font></a></li>
           <li><a href="musicsearch.html"><font color="#FF9900">Music Search</font></a></li>
      </ul>
    </div>
        
    </br>
  
    <div class="header-body"></div>
    
  </div>

  <p style="text-align:left">&nbsp;</p>
  <p style="text-align:left">Username:
    <input type="text" name="j_username" id="Username2" />
  </p>
  <p>Password:
    <input type="text" name="j_password" id="Username3" />
  </p>
  <p><a href="E:\INFS 740\Group Project\musicui\findpassword.html">Forget passwords?</a></p>
  <p>&nbsp;</p>
  <p>
    <button id="Button2">Cancel</button>
    <input type="submit" value="Login"></button>
  </p>

</form>
<script type="text/javascript">
$(function() {
	$( "#Button2" ).button(); 
});
$(function() {
	$( "#Button3" ).button(); 
});
</script>
</body>
</html>

