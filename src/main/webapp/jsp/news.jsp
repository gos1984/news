<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
<section>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-12">
			<h1>Новости</h1>
			<a href="#news_add" class="fancybox">Добавить новость</a>
			<table class="table center table-bordered">
				<tr>
					<th>№</th>
					<th>Наименование</th>
					<th>Статья</th>
					<th>Дата создания</th>
					<th>Категория</th>
					<th></th>
					<th></th>
				</tr>
				<c:forEach var="news" items="${list}">
					<tr>
						<td>${news.id}</td>
						<td>${news.name}</td>
						<td>${news.description}</td>
						<td>${news.date_create}</td>
						<td>${news.categoryName}</td>
						<td class="little"><a href="news/edit/${news.id}" class="btn btn-info">Редактировать</a></td>
						<td class="little"><a href="news/delete/${news.id}" class="btn btn-danger">Удалить</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
</section>
<div id="news_add" class="popup">
<jsp:include page="news_add.jsp" />
</div>
<jsp:include page="footer.jsp" />