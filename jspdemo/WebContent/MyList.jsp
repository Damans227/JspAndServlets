<%@ page import= "java.util.*" %>
<html>
<head>

<title>Insert title here</title>
</head>
<body>

<!-- Step 1 Create the html form -->

<form action="MyList.jsp">

Add new item: <input type="text" name="theItem">

<input type="submit" value="Submit">

</form>

</br>
Item entered: <%= request.getParameter("theItem") %>

<!-- Step 2 Add new item to the list -->

<% 

//get the TO DO items from the session
List<String> items = (List<String>) session.getAttribute("myToDoList");

//if the TO DO items don't exist, create a new one
if(items==null){
	
	items=new ArrayList<String>();
	session.setAttribute("myToDoList",items);
	
}
//see if there is form data to be added

String theItem = request.getParameter("theItem");
if(theItem!=null)
{
	items.add(theItem);
	
}
%>
<hr>
<b>To Do List: </b></br>
<!-- Step 3 Display all to-do item from the list  -->
<ol>
<% 
for (String temp: items){
	out.println("<li>"+temp+"</li>");
}

%>
</ol>

</body>
</html>