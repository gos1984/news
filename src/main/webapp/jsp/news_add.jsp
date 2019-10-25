<%@page import="java.util.Calendar" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
Calendar calendar = Calendar.getInstance();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
%>
<form:form method="post" action="/news/news_save" class="popup_form">
	<h3>Добавить новость</h3>
	<div class="form-group">
		<form:input path="name" class="form-control" />
		<form:textarea path="description" class="form-control" />
		<form:hidden path="date_create" class="form-control" value="<%=dateFormat.format(calendar.getTime()) %>"/>
		<form:select path="category_id" class="form-control" required="true">
			<c:forEach var="cat" items="${categoryes}">
				<form:option value="${cat.id}"><c:out value="${cat.name}" /></form:option>
			</c:forEach>
		</form:select>
		<input type="submit" value="Добавить"
			class="btn btn-primary btn-block" />
	</div>
</form:form>