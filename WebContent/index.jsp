<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

       <%--  <jsp:forward page="/WEB-INF/views/owner/main/main.jsp"></jsp:forward>
		<jsp:forward page="/WEB-INF/views/owner/main/main.jsp"></jsp:forward> 
 --%>
	<jsp:forward page="/WEB-INF/views/admin/event/eventWrite.jsp"></jsp:forward> 


		<%-- <jsp:forward page="/WEB-INF/views/owner/main/main.jsp"></jsp:forward>   
		<jsp:forward page="/login/test"/>
		
			<script>
		(function(){
			
			location.href="${ pageContext.servletContext.contextPath}/event/list";    
			
		})();
	</script>
--%> 




</body>
</html>
