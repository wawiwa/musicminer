<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8">
<title>New Music DB</title>
<link href="jQueryAssets/jquery.ui.core.min.css" rel="stylesheet" type="text/css">
<link href="jQueryAssets/jquery.ui.theme.min.css" rel="stylesheet" type="text/css">
<link href="jQueryAssets/jquery.ui.tabs.min.css" rel="stylesheet" type="text/css">
<script src="jQueryAssets/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="jQueryAssets/jquery-ui-1.9.2.tabs.custom.min.js" type="text/javascript"></script>
<meta name="Welcome to our Music Database World" content="" />
<meta name="description" content="Welcome to Our Music Database World" />
</head>

<body>
Music Search and Edit! 
<div id="Tabs1">
  <ul>
    <li><a href="#tabs-1">Music Search</a></li>
    <li><a id="test" href="#tabs-2">Edit</a></li>
  </ul>
  <div id="tabs-1">
    <p>Composer :
        <label for="textfield2"></label>
        <input type="text" name="textfield8" id="textfield2" />
      </p>
      <p>Nationality :
        <label for="textfield9"></label>
        <input type="text" name="textfield8" id="textfield9" />
      </p>
      <p>Time period :
        <label for="textfield10"></label>
        <input type="text" name="textfield8" id="textfield10" />
      </p>
      <p>Piece name:
        <label for="textfield11"></label>
        <input type="text" name="textfield8" id="textfield11" />
      </p>
      <p>Genres:
        <label for="textfield12"></label>
        <input type="text" name="textfield8" id="textfield12" />
      </p>
      <p>Melody:
        <label for="textfield11"></label>
        <input type="text" name="textfield8" id="textfield11" />
      </p>
      <p>Difficulty:
        <label for="textfield13"></label>
        <input type="text" name="textfield8" id="textfield13" />
      </p>
      <p>And so on ......</p>
      <p></p>
      <p>
        <button id="search_btn">Search Now</button>
      </p>
      <table border="1">
        <tr>
          <th width="329">Music Piece</th>
        </tr>
        <tr>
          <td><a onclick="discontrol('test')" href="#">row 1, cell 1</td>
        </tr>
        <tr>
          <td>row 2, cell 1</td>
        </tr>
        <tr>
          <td>row 3, cell 1</td>
        </tr>
        <tr>
          <td>row 4, cell 1</td>
        </tr>
        <tr>
          <td>row 5, cell 1</td>
        </tr>
        <tr>
          <td>row 6, cell 1</td>
        </tr>
      </table>
  </div>
  <div id="tabs-2">
   <div>
        <p>Add Instrument:
          <label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" />
        </p>
        <p>Add Working Title:
          <label for="textfield21"></label>
          <input type="text" name="textfield9" id="textfield21" />
        </p>
        <p>Add Rating:
          <label for="textfield22"></label>
          <input type="text" name="textfield9" id="textfield22" />
        </p>
        <p>&nbsp;</p>
        <p>
          <button id="Button5">Save</button>
        </p>
   </div>
  </div>
</div>

<script type="text/javascript">
function discontrol(itemid)
{
     if(document.getElementById(itemid).style.display=='none')
     {
 document.getElementById(itemid).style.display="";
     }
     else
     {
 document.getElementById(itemid).style.display="none";
     }
}
</script>
<script type="text/javascript">
$(function() {
	$( "#Tabs1" ).tabs(); 
});
</script>

</body>
</html>
