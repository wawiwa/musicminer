<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8">
<title>New Music DB</title>
<link href="<%=request.getContextPath()%>/resources/jQueryAssets/jquery.ui.core.min.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/jQueryAssets/jquery.ui.theme.min.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/jQueryAssets/jquery.ui.tabs.min.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/resources/jQueryAssets/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/jQueryAssets/jquery-ui-1.9.2.tabs.custom.min.js" type="text/javascript"></script>
<script type="text/javascript">
function getCompositionById(id) {
	alert("Composition ID: "+id);
	var resUrl = "http://localhost:8080/<%=request.getContextPath()%>/composition/"+id;
	$.getJSON(resUrl, showComposition);
}
function showComposition(jsonData) 
{
	//alert("Composition Title: "+jsonData.length);
	alert(jsonData.mainTitle);
	discontrol('search');
}
function discontrol(itemid)
{
     if(document.getElementById(itemid).style.display=='none'){
		document.getElementById(itemid).style.display="";}
     else{
    	 document.getElementById(itemid).style.display="none";
     }
}
function searchComposition()
{
	  var resUrl = "http://localhost:8080/<%=request.getContextPath()%>/composition/entity/";
    //$.getJSON(resUrl, showCompositionList);
    $.post(resUrl, $("#data_frm").serialize(), showCompositionList);
}
function showCompositionList(searchResult) 
{
    var htmlList = "<table style='border-width:2px;border-style:solid;border-spacing:0;' width='100%'><caption><strong>List of Compositions</strong></caption>";
    htmlList += "<thead><tr>";
    htmlList += "<th style='border:1px solid;color:#FF9900'>Number</th>";
    htmlList += "<th style='border:1px solid;color:#FF9900'>Main Title</th>";
    htmlList += "<th style='border:1px solid;color:#FF9900'>Author</th>";
    htmlList += "<th style='border:1px solid;color:#FF9900'>Genre</th>";
    htmlList += "<th style='border:1px solid;color:#FF9900'>Stylistic Era</th>";
    htmlList += "<th style='border:1px solid;color:#FF9900'>Publisher</th>";
    htmlList += "</tr></thead>";
    htmlList += "<tbody>";
    for (var i = 0; i < searchResult.length; i++) {
        htmlList += "<tr>";
        var handler = "getCompositionById('" + searchResult[i].number + "')";
        htmlList += "<td style='border:1px solid;color:#FF9900'><a onclick=" +  handler + " href=\"#\"><font color=\"#FF9900\">" + searchResult[i].number + "</font></td>";
        htmlList += "<td style='border:1px solid;color:#FF9900'>" + searchResult[i].mainTitle + "</td>";
        htmlList += "<td style='border:1px solid;color:#FF9900'>" + searchResult[i].author + "</td>";
        htmlList += "<td style='border:1px solid;color:#FF9900'>" + searchResult[i].genre + "</td>";
        htmlList += "<td style='border:1px solid;color:#FF9900'>" + searchResult[i].stylisticEra + "</td>";
        htmlList += "<td style='border:1px solid;color:#FF9900'>" + searchResult[i].publisher + "</td>";
        htmlList += "</tr>";
    }
    htmlList += "</tbody>";
    htmlList += "</table>";
	  $("#result_txt").html(htmlList);
}

$(function() 
{
  $("#searchCompositions_btn").click(searchComposition);
});
</script>
<meta name="Welcome to our Music Database World" content="" />
<meta name="description" content="Welcome to Our Music Database World" />
</head>

<body bgcolor="#006600">
<h1><img src="<%=request.getContextPath()%>/resources/img/gmu1.jpg" width="629" height="355"  alt=""/></h1>
<h1>Music Search and Edit! </h1>
<p>&nbsp;</p>
<div id="Tabs1" style="background:#006600; color:#FFF">
  <ul>
    <li><a id="search" href="#tabs-1"><font color="#FF9900">Music Search</font></a></li>
    <li><a id="edit" href="#tabs-2"><font color="#FF9900">Edit</font></a></li>
  </ul>
  <div id="tabs-1">
 <form id="data_frm" method="post" action="">
 <table width="431" border="0">
   <tr>
     <td width="136"><font color="#FF9900">Author Name:</font></td>
     <td width="285">
     <label for="textfield2"></label><input type="text" name="author" id="textfield2" /></td>
   </tr>
   <tr>
     <td width="136"><font color="#FF9900">Country:</font></td>
     <td><label for="textfield9"></label>
        <input type="text" name="textfield8" id="textfield9" /></td>
   </tr>
   <tr>
     <td><font color="#FF9900">Stylistic_era :</font></td>
     <td><label for="textfield10"></label>
        <input type="text" name="era" id="textfield10" /></td>
   </tr>
   <tr>
     <td><font color="#FF9900">Title:</font></td>
     <td><label for="textfield11"></label>
        <input type="text" name="title" id="textfield11" /></td>
   </tr>
   <tr>
     <td><font color="#FF9900">Genre:</font></td>
     <td><label for="textfield12"></label>
        <input type="text" name="genre" id="textfield12" /></td>
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
        <input type="text" name="Publisher" id="textfield13" /></td>
   </tr>
   <tr>
     <td><font color="#FF9900">Rating:</font></td>
     <td><label for="textfield13"></label>
        <input type="text" name="textfield8" id="textfield13" /></td>
   </tr>
 </table>
 </form>
     
   
      <p>
        <button id="searchCompositions_btn"><font color="#FF9900">Search Now</font></button>
      </p>
      <div id="result_txt">
	      <table border="1">
	        <tr>
	          <th width="329"><font color="#FF9900">Music Piece</font></th>
	        </tr>
	        <tr>
	          <td><a onclick="discontrol('edit')" href="#"><font color="#FF9900">row 1, cell 1</font></td>
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
  </div>
  
  <form id="rating_frm" method="post" action=""> 
  <div id="tabs-2">
   <div>
        <table width="400" border="0">
          <tr>
            <td width="113"><font color="#FF9900">Style:</font></td>
            <td width="271"><label for="textfield20"></label>
          <input type="text" name="era" id="era" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Technique:</font></td>
            <td><label for="technique"></label>
          <input type="text" name="technique" id="technique" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Rhythm:</font></td>
            <td><label for="rhythm"></label>
          <input type="text" name="rhythm" id="rhythm" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Flexibility:</font></td>
            <td><label for="flexibility"></label>
          <input type="text" name="flexibility" id="flexibility" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Connections:</font></td>
            <td><label for="connections"></label>
          <input type="text" name="connections" id="connections" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Range:</font></td>
            <td><label for="range"></label>
          <input type="text" name="range" id="range" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Merit:</font></td>
            <td><label for="merit"></label>
          <input type="text" name="merit" id="merit" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Articulation:</font></td>
            <td><label for="articulation"></label>
          <input type="text" name="articulation" id="articulation" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Accomplishment:</font></td>
            <td><label for="accomplishment"></label>
          <input type="text" name="accomplishment" id="accomplishment" /></td>
          </tr>
          <tr>
            <td><font color="#FF9900">Comments:</font></td>
            <td><label for="comments"></label>
          <input type="textarea" name="comments" id="comments" /></td>
          </tr>
        </table>
        <p>&nbsp;</p>
     
          <button id="Button5">Save</button>
        </p>
   </div>
  </div>
  </form>
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
