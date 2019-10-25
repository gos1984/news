<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
<h1>Редактировать новость</h1>  
<form:form method="post" action="/news/news/editsave">
	<h3>Редактировать новость</h3>
	<div class="form-group">
		<form:hidden  path="id" />
		<form:input path="name" class="form-control" required="true"/>
	</div>
	<div class="form-group">
		<form:textarea path="description" class="form-control" />
	</div>
	<div class="form-group">
		<form:select path="category_id" class="form-control" required="true">
			<c:forEach var="cat" items="${categoryes}">
				<form:option value="${cat.id}"><c:out value="${cat.name}" /></form:option>
			</c:forEach>
		</form:select>
	</div>
	<input type="submit" value="Редактировать" class="btn btn-primary btn-block" />
</form:form>
<jsp:include page="footer.jsp" />