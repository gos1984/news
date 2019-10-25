<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<form:form method="post" action="category_save" class="popup_form">
<h3>Добавить категорию</h3>
	<div class="form-group">
		<form:input path="name" class="form-control"/>
		<input type="submit" value="Добавить" class="btn btn-primary btn-block" />
	</div>
</form:form>