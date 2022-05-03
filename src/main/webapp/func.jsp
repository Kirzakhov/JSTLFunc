<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="str" value="Vivek Kumar is awesome"></c:set>
		Index: <c:out value="${fn:indexOf(str,'is')}"></c:out> <br>
		Is awesome there: <c:out value="${fn:contains(str,'awesome')}"></c:out> <br>
		<c:if test="${fn:contains(str,'awesome')}">
			You're awesome!
		</c:if> <br>
		<c:if test="${fn:endsWith(str,'awesome')}">
			Correct!
		</c:if> <br>
	
  	<c:forEach items="${fn:split(str,' ')}" var="s">
			<c:out value="${s}"></c:out> <br>  
		</c:forEach>  
	
 	Length: <c:out value="${fn:length(str)}"></c:out> 
</body>
</html>