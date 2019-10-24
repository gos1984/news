<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
        <h1>Добавить категорию</h1>  
       <form:form method="post" action="save">    
        <table >
         <tr>    
          <td>Наименование : </td>   
          <td><form:input path="name"  /></td>  
         </tr> 
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Добавить" /></td>    
         </tr>    
        </table>
       </form:form>
<jsp:include page="footer.jsp" />