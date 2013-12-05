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

    <p><font color="#FF9900">Author Name:</font>
        <label for="textfield2"></label>
        <input type="text" name="textfield8" id="textfield2" />
      </p>
      <p><font color="#FF9900">Country :</font>
        <label for="textfield9"></label>
        <input type="text" name="textfield8" id="textfield9" />
      </p>
      <p><font color="#FF9900">S</font><font color="#FF9900">tylistic_era :</font>
        <label for="textfield10"></label>
        <input type="text" name="textfield8" id="textfield10" />
      </p>
      <p><font color="#FF9900">Title:</font>
        <label for="textfield11"></label>
        <input type="text" name="textfield8" id="textfield11" />
      </p>
      <p><font color="#FF9900">Genre:</font>
        <label for="textfield12"></label>
        <input type="text" name="textfield8" id="textfield12" />
      </p>
      <p><font color="#FF9900">Instrumentation:</font>
        <label for="textfield13"></label>
        <input type="text" name="textfield8" id="textfield13" />
      </p>
      <p><font color="#FF9900">Key:</font>
        <label for="textfield13"></label>
        <input type="text" name="textfield8" id="textfield13" />
      </p>
      <p><font color="#FF9900">Publisher:</font>
        <label for="textfield13"></label>
        <input type="text" name="textfield8" id="textfield13" />
      </p>
      <p><font color="#FF9900">Rating:</font>
        <label for="textfield13"></label>
        <input type="text" name="textfield8" id="textfield13" />
      </p>
      <p>
        <button id="search_btn"><font color="#FF9900">Search Now</font></button>
      </p>
      <table border="1">
        <tr>
          <th width="329"><font color="#FF9900">Music Piece</font></th>
        </tr>
        <tr>
          <td><font color="#FF9900">row 1, cell 1</font></td>
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
        <p><font color="#FF9900">Style:</font>
          <label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" />
        </p>
        <p><font color="#FF9900">Technique:</font>
          <label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" />
        </p>
        <p><font color="#FF9900">R</font><font color="#FF9900">hythm:</font>
          <label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" />
        </p>
        <p><font color="#FF9900">F</font><font color="#FF9900">lexibility:</font>
          <label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" />
      </p>
        <p><font color="#FF9900">C</font><font color="#FF9900">onnections:</font>
          <label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" />
      </p>
        <p><font color="#FF9900">R</font><font color="#FF9900">ange:</font>
          <label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" />
      </p>
        <p><font color="#FF9900">Merit:</font>
          <label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" />
      </p>
        <p><font color="#FF9900">Articulation:</font>
          <label for="textfield20"></label>
          <input type="text" name="textfield9" id="textfield20" />
      </p>
      <p><font color="#FF9900">Accomplishment:</font>
        <label for="textfield21"></label>
          <input type="text" name="textfield9" id="textfield21" />
        </p>
        <p><font color="#FF9900">Comments:</font>       
          <label for="textfield22"></label>
          <input type="textarea" name="textfield9" id="textfield22" />
        </p>
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
