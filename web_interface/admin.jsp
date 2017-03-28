<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<link rel="stylesheet" href="styles.css">
<title>Admin Page</title> 
<style>
.button {
  display: inline-block;
  padding: 10px 15px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #606060;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head> 
<body> 
<br/><br/><br/><br/><br/> 
<center> 
<h2>
<script type="text/javascript">
	var tmonth=new Array("January","February","March","April","May","June","July","August","September","October","November","December");

	function GetClock(){
		var d=new Date();
		var nmonth=d.getMonth(),ndate=d.getDate(),nyear=d.getYear();
		if(nyear<1000) nyear+=1900;

			var nhour=d.getHours(),nmin=d.getMinutes(),nsec=d.getSeconds(),ap;

			if(nhour==0){ap=" AM";nhour=12;}
			else if(nhour<12){ap=" AM";}
			else if(nhour==12){ap=" PM";}
			else if(nhour>12){ap=" PM";nhour-=12;}
	
			if(nmin<=9) nmin="0"+nmin;
			if(nsec<=9) nsec="0"+nsec;

			document.getElementById('clockbox').innerHTML=""+tmonth[nmonth]+" "+ndate+", "+nyear+" "+nhour+":"+nmin+":"+nsec+ap+"";
}

			window.onload=function(){
			GetClock();
			setInterval(GetClock,1000);
			}
</script>
<div id="clockbox"></div>
</h2>
<h1>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<% 

try{
	String a=session.getAttribute("username").toString(); 
	out.println("Hello, "+a+"<br><br>"); 
	out.println("<button class='button' onclick=\"location.href='newItem.html'\">Signout new Item</button><br></br>");
	out.println("<button class='button' onclick=\"location.href='removeItem.html'\">Return Item(s)</button><br></br>");
	out.println("<button class='button' onclick=\"location.href='viewDatabase.html'\">View Database</button><br></br>");

}catch(NullPointerException e){
	//go back to login back if not logged in 
	response.sendRedirect("index.html");
}
%> 
</h1> 
<br/><br/> 
<a href="logout.jsp">Logout</a> 
</center> 
</body> 
</html>

