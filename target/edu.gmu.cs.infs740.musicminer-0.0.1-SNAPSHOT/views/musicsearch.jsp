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

<body bgcolor="#006600">
<h1><img src="gmu1.jpg" width="629" height="355"  alt=""/></h1>
<h1>Music Search and Edit! </h1>
<p>&nbsp;</p>
<div id="Tabs1" style="background:#006600; color:#FFF">
  <ul>
    <li><a href="#tabs-1"><font color="#FF9900">Music Search</font></a></li>
    <li><a id="test" href="#tabs-2"><font color="#FF9900">Edit</font></a></li>
  </ul>
  <div id="tabs-1">
 <table width="431" border="0">
   <tr>
     <td width="136"><font color="#FF9900">Author Name:</font></td>
     <td width="285">
     <label for="textfield2"></label><input type="text" name="textfield8" id="textfield2" /></td>
   </tr>
   <tr>
     <td width="136"><font color="#FF9900">Country:</font></td>
     <td><label for="textfield9"></label>
        <input type="text" name="textfield8" id="textfield9" /></td>
   </tr>
   <tr>
     <td><font color="#FF9900">Stylistic_era :</font></td>
     <td><label for="textfield10"></label>
        <input type="text" name="textfield8" id="textfield10" /></td>
   </tr>
   <tr>
     <td><font color="#FF9900">Title:</font></td>
     <td><label for="textfield11"></label>
        <input type="text" name="textfield8" id="textfield11" /></td>
   </tr>
   <tr>
     <td><font color="#FF9900">Genre:</font></td>
     <td><label for="textfield12"></label>
        <input type="text" name="textfield8" id="textfield12" /></td>
   </tr>
   <tr>
     <td><font color="#FF9900">Instrumentation:</font></td>
     <td><label for="textfield13"></label>
        <input type="text" name="textfield8" id="textfield13" /></td>
   </tr>
   <tr>
     <td><font color="#FF9900">Key:</font></td>
     <td><label for="textfield13"></label>
        <input type="text" name="textfield8" id="textfield13" /></td>
   </tr>
   <tr>
     <td><font color="#FF9900">Publisher:</font></td>
     <td><label for="textfield13"></label>
        <input type="text" name="textfield8" id="textfield13" /></td>
   </tr>
   <tr>
     <td><font color="#FF9900">Rating:</font></td>
     <td><label for="textfield13"></label>
        <input type="text" name="textfield8" id="textfield13" /></td>
   </tr>
 </table>
     
      
      <p>
        <button id="search_btn"><font color="#FF9900">Search Now</font></button>
      </p>
      <table border="1">
        <tr>
          <th width="329"><font color="#FF9900">Music Piece</font></th>
        </tr>
        <tr>
          <td><a onclick="discontrol('test')" href="#"><font color="#FF9900">row 1, cell 1</font></td>
        </tr>
        <tr>
          <td><font color="#FF9900">row 2, cell 1</font></td>
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
        <table width="400" border="0">
          <tr>
            <td width="113"><font color="#FF9900">Style:</font></td>
            <td width="271"><label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Technique:</font></td>
            <td><label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">R</font><font color="#FF9900">hythm:</font></td>
            <td><label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">F</font><font color="#FF9900">lexibility:</font></td>
            <td><label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">C</font><font color="#FF9900">onnections:</font></td>
            <td><label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">R</font><font color="#FF9900">ange:</font></td>
            <td><label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Merit:</font></td>
            <td><label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Articulation:</font></td>
            <td><label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Accomplishment:</font></td>
            <td><label for="textfield21"></label>
          <input type="text" name="textfield9" id="textfield21" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Comments:</font></td>
            <td><label for="textfield22"></label>
          <input type="textarea" name="textfield9" id="textfield22" /></td>
          </tr>
        </table>
        <p>&nbsp;</p>
     
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
