<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
<section>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-8">
			<h1>Новости</h1>
			<a href="news_add">Добавить новость</a>
			<table class="table center table-bordered">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th></th>
					<th></th>
				</tr>
				<c:forEach var="news" items="${list}">
					<tr>
						<td>${news.id}</td>
						<td>${news.name}</td>
						<td class="little"><a href="news/edit/${news.id}">Edit</a></td>
						<td class="little"><a href="news/delete/${news.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
</section>
<jsp:include page="footer.jsp" />