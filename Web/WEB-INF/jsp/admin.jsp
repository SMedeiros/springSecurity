<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<html>
<head>
	<title>Admin page</title>
</head>
<body>
	<security:authentication property="principal" var="currentUser" />
	
	<p>
		Ol&aacute; ${ currentUser.username }. Bem vindo a &aacute;rea reservada aos administrados. <a href="<c:url value="/logout" />" > Logout</a>
	</p>
	
	<h1>Parab&eacute;ns!!!</h1>	
	<p>
		Vc possui todos os requisitos para ser um administrador do sistema.
	</p>
</body>
</html>