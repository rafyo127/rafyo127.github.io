<html> 
<head> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script
src="http://maps.googleapis.com/maps/api/js?key=YOUR_APIKEY&sensor=false">
</script>
<script src="https://www.gstatic.com/firebasejs/3.6.7/firebase.js"></script>
<link rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Logout Page</title> 
</head> 
<body> 
<% 
	session.removeAttribute("username"); 
	session.removeAttribute("password"); 
	session.invalidate(); 
%>
<script>
sleep(1000);
window.location.href = "http://munro.humber.ca/~n01040349/index.html";
function sleep(delay) {
    var start = new Date().getTime();
    while(new Date().getTime() < start + delay);
}
</script> 
</body> 
</html>

