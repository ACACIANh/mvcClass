<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC</title>
</head>
<body>
	<h1>Core - 흐름 제어 태그</h1>
	<hr>

	<ul>
		<li>${nameArray[0] }</li>
		<li>${nameArray[1] }</li>
		<li>${nameArray[2] }</li>
		<li>${nameArray[3] }</li>
		<li>${nameArray[4] }</li>
	</ul>
	<hr>

	<ul>
		<c:forEach var="i" begin="0" end="4" step="1">
			<li>${nameArray[i] }</li>
		</c:forEach>
	</ul>
	<hr>
	
	<ul>
		<%-- forEach 태그는 배열 또는 콜렉션의 요소값을 제공받아 반복처리 가능 --%>
		<%-- var 속성 : 요소값을 저장하기 위한 스코프 객체의 속성명을 속성값으로 설정 --%>
		<%-- items 속성 : 반복 처리할 배열 또는 콜렉션을 속성값으로 설정 --%>
		<c:forEach var="name" items="${nameArray }">
			<li>${name }</li>
		</c:forEach>
	</ul>	
	<hr>
	<c:forEach var="student" items="${studentList }">
		<div>학번 = ${student.num }, 이름 = ${student.name }</div>
	</c:forEach>
</body>
</html>