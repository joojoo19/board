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
<h1>로그인</h1>
<form action="login.do" method="post">
<p>아이디 : <input type="text" name="id" value="${param.id}" />
<c:if test="${errors.id }">아이디를 입력하세요</c:if>
<c:if test="${errorspPwNotMatch }">암호가 일지하지 않습니다</c:if>
<c:if test="${errors.idNotMatch }">일치하는 아이디가 없습니다      <a href="join.do">[회원가입하기]</a></c:if>
</p>
<p>암호 : <input type="password" name="pw" />
<c:if test="${errors.pw }">암호를 입력하세요</c:if>
</p>
<input type="submit" value="로그인" />
</form>
</div>
</body>
</html>