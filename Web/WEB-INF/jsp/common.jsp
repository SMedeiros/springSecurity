<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Common</title>
	</head>
	<body>
		
	<security:authorize ifNotGranted="ROLE_ANONYMOUS">
			<a href="<c:url value="/logout" />">Logout</a>
	</security:authorize>
	
	<p>
		Bem, qualquer um pode acessar essa p&eacute;gina.Ent&atilde;o seja bem vindo e aproveite.
	</p>

	</body>
</html>