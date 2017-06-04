<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
<head> 
<title>注册</title> 
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"> 
<meta http-equiv="description" content="this is my page"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<LINK rel="Shortcut icon" href="favicon.ico" /> 
<link rel="stylesheet" type="text/css" href="css/register.css" /> 
<script src="js/checkbox.js" type="text/javascript"> 
</script> 
<script type="text/javascript"> 
function play(){ 
document.getElementById("menu_item").style.display = ""; 
} 
function noplay(){ 
document.getElementById("menu_item").style.display = "none"; 
} 
function passwd(){ 
var pass = document.getElementById("password").value; 
var tip = document.getElementById("tip"); 
if (pass.length < 4) { 
document.getElementById("meter").value = pass.length; 
tip.innerHTML = "差"; 
} 
else 
if (pass.length <= 8) { 
document.getElementById("meter").value = pass.length; 
tip.innerHTML = "中"; 
} 
else { 
document.getElementById("meter").value = pass.length; 
tip.innerHTML = "高"; 
} 
} 
</script> 
<style type="text/css">
<!--
body {
	background-image: url(images/140611102413-8.jpg);
}
-->
</style></head> 
<body> 
<div id="3" style="position: relative; top: 100px; z-index: 3;"> 
<form id="f1" action="zhucecheck.jsp" method="post"> 
<table align="center" cellspacing="0" class="table"> 
<tr class="thead"> 
<td align="center"> 
用户注册（请使用英文完成注册） 
</td> 
</tr> 
<tr> 
<td> 
<table id="registertable" border="0px" align="center" border="0px" cellspacing="0" cellpadding="5px"> 
<tr> 
<tr> 
<td align="right">学号： 
</td> 
<td align="left"> 
<input type="text" name="username" placeholder="用户名" required/> 
</td> 
</tr> 
<tr> 
<td align="right"> 
密 码： 
</td> 
<td align="left"> 
<input type="password" name="password" id="password" placeholder="密码" required onKeyUp="passwd()"/> 
<meter min="1" max="10" low="5" high="8" value="0" id="meter"> 
</meter> 
<span id="tip"></span> 
</td> 
</tr> 
<tr> 
<td align="right"> 
密码确认： 
</td> 
<td align="left"> 
<input type="password" name="password1" placeholder="确认密码" required/> 
</td> 
</tr>  
<tr> 
<td align="right"> 
姓名： 
</td> 
<td align="left"> 
<input type="text" name="name" placeholder="姓名" required/> 
</td> 
</tr> 
<tr> 

<td align="right"> 
性 别： 
</td> 
<td align="left"> 
<input type="text" name="sex" placeholder="性别" required/> 
</td> 
</tr> 
<tr> 
<td align="right">学 院： 
</td> 
<td align="left"> 
<input type="texe" name="college" placeholder="学院"  required/> 
</td> 
</tr> 
<tr> 
<td align="right">班 级： 
</td> 
<td align="left"> 
<input type="text" name="class1" placeholder="班级" /> 
</td> 
</tr> 
<tr> 
<td align="right"> 
手 机： 
</td> 
<td align="left"> 
<input type="tel" pattern="[0-9]{11}" id="p" name="telephone" placeholder="请输入11位数字" /> 
</td> 
</tr> 
<tr> 
<
</td> 
</tr> 
<tr> 
<td align="right">籍 贯： 
</td> 
<td align="left"> 
<input type="text" name="nativeplace" placeholder="籍贯" /> 
</td> 
</tr> 
<tr> 
<td align="right">设置密保1（输入你喜欢的一句英文）： 
</td> 
<td align="left"> 
<input type="text" name="find" placeholder="密保1" /> 
</td> 
</tr> 
<tr> 
<td align="right">设置密保2（输入你喜欢的一串输数字）： 
</td> 
<td align="left"> 
<input type="text" name="find1" placeholder="密保2" /> 
</td> 
</tr> 

<script> 
function show(){ 
var file = document.getElementById("f").files[0]; 
var fileReader = new FileReader(); 
fileReader.readAsDataURL(file); 
fileReader.onload = function(){ 
document.getElementById("img").src = fileReader.result; 
} 
} 
</script> 
</td> 
</tr> 
<tr> 
<td colspan="2"> 
<details> 
<p> 
 
<mark> 
 
</mark>
</p> 
<summary> 
 
</summary> 
</details> 
</td> 
</tr> 

<script> 
var span = document.getElementById("span"); 
span.innerHTML=Math.floor(Math.random()); 
</script> 
</td> 
</tr> 
<tr height="60px"> 
<td align="center" colspan="2"><input type="submit" accesskey="enter" value="注册" id="btn" onMouseMove="changeBgColor('btn')" onMouseOut="recoverBgColor('btn');" class="submit" formmethod="post"/> 
</td> 
</tr> 
</table> 
</td> 
</tr> 
</table> 
</form> 
</div> 
</body> 
</html> 

