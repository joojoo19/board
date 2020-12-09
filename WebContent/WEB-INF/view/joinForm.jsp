<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>회원가입</h1>
<form action="join.do" method="post">
<p>아이디 : <br />
<c:if test="${erroes.id }">ID를 입력하세요 </c:if>
<c:if test="${erroes.duplicateId }">이미 사용중인 아이디입니다 </c:if>
<input type="text" name="id" value="${param.id}" /></p>
<p>이름 : <br />
<input type="text" name="name" value="${param.name}" /></p>
<c:if test="${erroes.name }">이름을 입력하세요 </c:if>
<p>암호 : <br />
<input type="password" name="pw" id="" /></p>
<c:if test="${erroes.pw }">암호를 입력하세요 </c:if>
<p>확인 <br />
<input type="password" name="confirmPw" id="" /></p>
<c:if test="${erroes.confirmPw }">확인을 입력하세요 </c:if>
<c:if test="${erroes.notMatch}">암호와 확인이 일치하지 않습니다 </c:if>
<input type="submit" value="가입" />	
</form>
</div>
</body>
</html>



