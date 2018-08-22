<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!doctype html>
<html lang="en">
<body>
<div id="wrapper">
	<div id="header">
		<jsp:include page="../common/titleBox.jsp"/>
	</div> 
	<div id="content">
		<jsp:include page="../member/search.jsp"/>
	</div> 
	<div id="footer">
	</div>
</div>
<script>
	admin.main('${context}');
</script>	
</body>
</html>





