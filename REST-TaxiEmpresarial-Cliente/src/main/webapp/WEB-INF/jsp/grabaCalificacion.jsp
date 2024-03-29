<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calificacion</title>
</head>
<body>

<h1>Actualizacion de calificacion</h1>

<c:url var="grabarUrl" value="/encuesta/califica?cal_cod=${calificacionAttribute.cal_cod}" />
<form:form modelAttribute="calificacionAttribute" method="POST" action="${grabarUrl}">
	<table>
		<tr>
			<td><form:label path="cal_cod">Codigo:</form:label></td>
			<td><form:input path="id" disabled="true"/></td>
		</tr>
	
		<tr>
			<td><form:label path="cal_preg01">Calificacion:</form:label></td>
			<td><form:input path="cal_preg01"/></td>
		</tr>

		<tr>
			<td><form:label path="cal_preg02">Observaciones:</form:label></td>
			<td><form:input path="cal_preg02"/></td>
		</tr>
		
	</table>
	
	<input type="submit" value="Grabar" />
</form:form>

</body>
</html>