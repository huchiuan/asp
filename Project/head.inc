<html>
<head>
	<title><%=title%></title>   
	<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset="UTF-8">
    
	<script>
function setCookie(cname,cvalue){
	var time = new Date();
	time.setTime(time.getTime()+  1000 * 60 * 1);
	var expires = "expires="+time.toGMTString();
    
	document.cookie = cname+"="+cvalue+"; "+expires;
}
function getCookie(cname){
	var name = cname + "=";
	var ca = document.cookie.split(';');
	for(var i=0; i<ca.length; i++) {
		var c = ca[i].trim();
		if (c.indexOf(name)==0) return c.substring(name.length,c.length);
	}
	return "";
}
function checkCookie(){
	var user=getCookie("username");
	if (user!=""){
		alert("歡迎回來" + user+"的學生");
	}
	else {
		user = prompt("你是哪個學校的我幫你做紀錄!","");
  		if (user!="" && user!=null){
    		setCookie("username",user);
    	}
	}
}



</script>
</head>
<body onload="checkCookie()">

</body>
<h2 align=center><%=title%></h2>
