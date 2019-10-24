<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
        <h1>Редактировать категорию</h1>  
       <form:form method="POST" action="/news/category/editsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="id" /></td>  
         </tr>   
         <tr>    
          <td>Name : </td>   
          <td><form:input path="name"  /></td>  
         </tr>
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Редактировать" /></td>    
         </tr>    
        </table>    
       </form:form>
<jsp:include page="footer.jsp" />