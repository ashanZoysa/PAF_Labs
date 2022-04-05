<%@page import="com.item.Item"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 
<%
if (request.getParameter("itemCode") != null) 
{ 
	Item itemObj = new Item(); 
	 	String stsMsg = itemObj.insertItem(request.getParameter("itemCode"), 
	 	request.getParameter("itemName"), 
	 	request.getParameter("itemPrice"), 
	 	request.getParameter("itemDesc")); 
	 	session.setAttribute("statusMsg", stsMsg); 
	 
	 	session.setAttribute("statusMsg", stsMsg);
	 
	 
	 
}	

%>
 

 
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
		<title>Items Management</title>
</head>
<body>
		<h1>Items Management</h1>
		<form method="post" action="addItems.jsp">
 			<label>Item code</label>
 			<input name="itemCode" type="text" ><br><br>
 			<label>Item name</label>
 			 <input name="itemName" type="text" ><br><br>
 			<label>Item price</label> 
 			<input name="itemPrice" type="number" ><br><br>
			<label>Item description</label> 
			<input name="itemDesc" type="text" ><br><br>
 			<input name="btnSubmit" type="submit" value="Save">
		</form>
		<br>

		<% out.print(session.getAttribute("statusMsg")); %>
		<br>
		<%
 			Item itemObj = new Item(); 
 			out.print(itemObj.readItems()); 
		%>
</body>
</html>
