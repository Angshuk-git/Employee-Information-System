<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.um.model.User" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" >EMPLOYEE INFORMATION SYSTEM</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/list">Employees</a>
        </li>
        </ul>
        </div>
        </div>
        </nav>
        <c:if test="${list==null}"> 
       <form action="insert" method="post"> 
      </c:if>
      <c:if test="${list!=null}"> 
       <form action="update" method="post"> 
      </c:if>
      
      <h2 align="center">
       <c:if test="${list==null}">
       ADD EMPLOYEE
       </c:if>
       <c:if test="${list!=null}">
       EDIT EMPLOYEE
       </c:if>
      </h2>
      <center>
          <div class="mb-3 container">

  <input type="hidden" class="form-control" id="exampleFormControlInput5" value="${list.id}" name="id" style="width:300px">
  </div>
       <div class="mb-3 container">
  <label for="exampleFormControlInput1" class="form-label">Name</label>
  <input type="text" class="form-control" id="exampleFormControlInput1" value="${list.name}" placeholder="Enter your name" name="name" style="width:300px">
  </div>
<div class="mb-3 container">
  <label for="exampleFormControlInput1" class="form-label">Email</label>
  <input type="email" class="form-control" id="exampleFormControlInput2"  value="${list.email}" placeholder="Enter your email" name="email" style="width:300px">
</div>
 
 <div class="mb-3 container">
  <label for="exampleFormControlInput1" class="form-label">City</label>
  <input type="text" class="form-control" id="exampleFormControlInput3" value="${list.city}" placeholder="Enter your city" name="city" style="width:300px">
</div>
<input type="submit" value="save" class="btn btn-success" style="width:150px">
</center>
</form>

</body>
</html>