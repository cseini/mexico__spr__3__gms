<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="contentBox">
	<div id="loginFormLayout" style="width: 250px;margin: 50px auto;border:5px solid black">
		<h1 >로그인</h1>
		<form id="loginForm" name="loginForm" >
			ID <input type="text" name="userid" value="joon"/> <br />
			PASS <input type="text" name="password" value="1"/> <br />
			<input id="loginFormBtn" type="button"  value="전 송"/>
			<input type="hidden" name="action" value="login" />
		</form>
	</div>
</div> 
	<script>
	document.getElementById('loginFormBtn')
	.addEventListener('click',function(){
		var x = service.nullChecker(
				[document.loginForm.userid.value,
					document.loginForm.password.value]);
		if(x.checker){
			var form = document.getElementById('loginForm');
			form.action = "${context}/member.do" ;
			form.method = "post";
			form.submit();	
		}else{
			alert(x.text);
		}
	});
	</script>
</body>
</html>










