<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
<section>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-8">
			<h1>Категории</h1>
			<a href="#category_add" class="fancybox">Добавить новую категорию</a>
			<table class="table center table-bordered">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th></th>
					<th></th>
				</tr>
				<c:forEach var="category" items="${list}">
					<tr>
						<td>${category.id}</td>
						<td>${category.name}</td>
						<td class="little"><a href="category/edit/${category.id}" class="btn btn-info">Редактировать</a></td>
						<td class="little"><a href="category/delete/${category.id}" class="btn btn-danger">Удалить</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
</section>
<div id="category_add" class="popup">
<jsp:include page="category_add.jsp" />
</div>
<jsp:include page="footer.jsp" />