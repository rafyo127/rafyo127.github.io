<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Welcome Page</title> 
</head> 
<body> 
<% 

String username=request.getParameter("username"); 
String password=request.getParameter("password");

try{
 
	if((username.equals("admin") && password.equals("root"))){ 
	session.setAttribute("username",username); 
	response.sendRedirect("admin.jsp"); 
	}else{ 
	response.sendRedirect("Error.jsp");
	//out.println("alert(""User or password incorrect"");");

	}
}catch(NullPointerException e){
	//go back to login page
	response.sendRedirect("index.html");
}
	
%> 
</body> 
</html>

