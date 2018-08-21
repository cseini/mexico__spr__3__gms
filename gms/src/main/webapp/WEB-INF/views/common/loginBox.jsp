<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="loginBox">
    <a id="moveLogin">LOGIN</a>&nbsp;&nbsp;&nbsp;
    <a id="moveAdd">JOIN</a>
</div>
<script>
document.getElementById('moveLogin')
	.addEventListener('click',function(){ 
	router.move({context : '${context}',
		domain : 'member',
		action : 'move',
		page : 'login'});
});
document.getElementById('moveAdd')
.addEventListener('click',function(){ 
router.move({context : '${context}',
	domain : 'member',
	action : 'move',
	page : 'add'});
});
</script>
