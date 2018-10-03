<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:set var="flag" value="2" scope="session"/>
	<c:if test="${param.userID !=null && param.userPassword != null}">
		<c:set var="userid" value="${param.userID }" scope="session" />
		<c:set var="userpassword" value="${param.userPassword }" scope="session" />
		<c:remove var="flag"/>
		<c:set var="flag" value="1" scope="session"/>
	</c:if>
	<c:remove var="pagefile" />
	<c:out value="${param.userID }"/>
	<c:out value="${flag }"/>
	<jsp:forward page="index.jsp"/>
</body>
</html>