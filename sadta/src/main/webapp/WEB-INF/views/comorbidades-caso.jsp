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
	<script>
		function concordar(id){
			document.getElementById(id).value = "true";
			console.log("concordar "+document.getElementById(id));
			document.getElementById(id).setAttribute("onclick", "discordar('"+id+"')");
		}
		
		function discordar(id){
			document.getElementById(id).value = "false";
			console.log(document.getElementById(id));
			document.getElementById(id).setAttribute("onclick", "concordar('"+id+"')");
		}
	</script>
	<table class="table table-striped">
		<thead></thead>
		<tbody>
			<c:forEach items="${caso.comorbidadesCaso}" var="comorbidade">
				<tr>
					<td>${comorbidade.nomeComorbidade}</td>
					<td align="right" class="elemento" hidden="">
						<td align="right" class="elemento" hidden="">
							<input type="text" name="comorbidades" value="${comorbidade.codigoComorbidade}" hidden="" readonly="readonly">
							<select required="required" name="validaComorbidade" class="form-control" id="input-select">
								<option value="true">Concordo</option>
								<option value="false">Discordo</option>
							</select>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>