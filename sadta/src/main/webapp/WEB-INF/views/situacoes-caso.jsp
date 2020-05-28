<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-striped">
		<thead></thead>
		<tbody>
			<c:forEach items="${caso.situacoesCaso}" var="situacao">
				<tr>
					<td>${situacao.nomeSituacao}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>