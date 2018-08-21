<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="contentBox">
 	 <div id="join-layout">
    <h3>회원가입</h3>
        <form id="joinForm" name="joinForm">
            아이디         <input type="text" name="userid" /><br />
            비밀번호      <input type="text" name="password" /><br />
            이름            <input type="text" name="name"/><br />
            주민등록번호<input type="text" name="ssn"/><br />
            <input id="joinFormBtn" type="button" value="전송"/>        
           소속팀
           <input type="radio" name="teamid" 
           		value="none" checked="checked" />없음
           <input type="radio" name="teamid" 
           		value="yanolja" />야놀자
           <input type="radio" name="teamid" 
           		value="jieunzip" />지은집
           <input type="radio" name="teamid" 
           		value="turtleking" />터틀킹
           <input type="radio" name="teamid" 
           		value="coddingstar" />코딩스타
        
        프로젝트역할
        <select name="roll" id="roll">
        	 <option value="leader">팀장</option>
        	 <option value="front">프론트개발</option>
        	 <option value="back">백단개발</option>
        	 <option value="android">안드로이드개발</option>
        	 <option value="minfe">민폐</option>
        </select>
        수강과목
        <input type="checkbox" name="subject" 
        	value="java" checked="checked" /> Java
        <input type="checkbox" name="subject" value="clang" /> C언어
        <input type="checkbox" name="subject" value="JSP" /> JSP
        <input type="checkbox" name="subject" value="PHP" /> PHP
        <input type="checkbox" name="subject" value="nodejs" /> NodeJS
        <input type="checkbox" name="subject" value="linux" /> Linux
        <input type="checkbox" name="subject" value="html" /> HTML
        <input type="checkbox" name="subject" value="spring" /> Spring
    </form>
    </div></div>
    <script>
	document.getElementById('joinFormBtn')
	.addEventListener('click',function(){
		var x = service.nullChecker(
				[document.joinForm.userid.value,
					document.joinForm.password.value,
					document.joinForm.name.value,
					document.joinForm.ssn.value
					]);
		if(x.checker){
			var form = document.getElementById('joinForm');
			form.action = "${context}/member.do" ;
			form.method = "post";
			member.join(x);
			document.form.gender = member.getGender();
			document.form.age = member.getAge();
			
			node.setAttribute('type','hidden');
			node.setAttribute('name','action');
			node.setAttribute('value','delete');
			var arr = [
					{name:'gender',value:member.getGender()},
					{name:'age',value:member.getAge()},
				];
			
			for(var i in arr){
				var node = document.createElement('input'); 
				node.setAttribute('type','hidden');
				node.setAttribute('name',arr[i].name);
				node.setAttribute('value',arr[i].value);
				form.appendChild(node);
			}
		     var node = document.createElement('input'); 
		     node.setAttribute(type,'hidden');
		     node.setAttribute(name,'page');
		     node.setAttribute(value,'joinResult');
		     
			form.submit();	
		}else{
			alert(x.text);
		}
	});
	</script>
 </body>
 </html>
 
 
 
 
 