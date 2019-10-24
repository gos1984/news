<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
<h1>Employees List</h1>  
<table>  
<tr><th>Id</th><th>Name</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="category" items="${list}">   
   <tr>  
   <td>${category.id}</td>  
   <td>${category.name}</td>
   <td><a href="edit/${category.id}">Edit</a></td>  
   <td><a href="delete/${category.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="category_add">Добавить новую категорию</a>
<jsp:include page="footer.jsp" />