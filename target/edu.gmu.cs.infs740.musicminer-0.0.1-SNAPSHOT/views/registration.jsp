<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="jQueryAssets/jquery.ui.core.min.css" rel="stylesheet" type="text/css" />
<link href="jQueryAssets/jquery.ui.theme.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" media="screen" href="jQueryAssets/jqsimplemenu.css"/>

<script src="jQueryAssets/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="jQueryAssets/jqsimplemenu.js" type="text/javascript"></script>

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
  <p><img src="gmu1.jpg" width="629" height="355"  alt=""/> 
  <h1>Registration Page!
    </h1><div class="contentcontainer" style="margin-top:100px; width:950px">
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

  <p>&nbsp;</p>
  <table width="514" border="0">
  <tr>
    <td width="162">Your Name:</td>
    <td width="342"><input type="text" name="Username4" id="Username4" /></td>
  </tr>
  <tr>
    <td width="162">Your Email:</td>
    <td width="342"><input type="text" name="Username5" id="Username5" /></td>
  </tr>
  <tr>
    <td width="162">Your Password:</td>
    <td width="342"><input type="text" name="Username6" id="Username6" /></td>
  </tr>
  <tr>
  <td width="162">Password Confirmation:</td>
    <td width="342"><input type="text" name="Username7" id="Username7" /></td>
  </tr>
</table>
  
  <p>&nbsp;</p>
  <p>
    <button id="Button4">Registration</button>
  </p>

</form>

</body>
</html>
