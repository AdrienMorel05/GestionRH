<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajouter un Manager ou un employée</title>
<link rel="stylesheet" type="text/css" href="styles/styleheaderfooter.css" />
<link rel="stylesheet" type="text/css" href="styles/styleajout.css" />


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.error{
color: red;}</style>
</head>
<body>
 
<jsp:include page="header.jsp"></jsp:include>    

<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
<div class="form-login">
            <h4>Ajout d'un Manager/Employee</h4>
            
<form:form modelAttribute="employee" action="ajout"  method="post">
<form:hidden path="empId"/>
<div class="champs">
<label>Votre Prénom   <form:errors path="firstName" cssClass="error" /></label>
<form:input path="firstName"/>



<label>Votre nom    <form:errors path="lastName" cssClass="error" /></label>
<form:input path="lastName"/>

 <label>Votre titre   <form:errors path="title" cssClass="error" /></label>
<form:select path="title">
	<option value="null"><spring:message code="label.addtitle"></spring:message></option>
	<option value="President"><spring:message code="label.president"></spring:message></option>
	<option value="Vice President"><spring:message code="label.vicepresident"></spring:message></option>
	<option value="Treasurer"><spring:message code="label.treasurer"></spring:message></option>
	<option value="Operations Manager"><spring:message code="label.operationmanager"></spring:message></option>
	<option value="Loan Manager"><spring:message code="label.loanmanager"></spring:message></option>
	<option value="Head Teller"><spring:message code="label.headteller"></spring:message></option>
	<option value="Teller"><spring:message code="label.teller"></spring:message></option>
</form:select>

<label>Votre date d'embauche    <form:errors path="startDate" cssClass="error" /></label>
<form:input path="startDate" type="date"  />

<label>Id de votre manager  </label>
<form:select path="manager">
	<option value="null" selected="selected"></option>
		<c:forEach var="manager" items="${manager}">
	<option value="${manager.empId}">${manager}</option>
	</c:forEach>
</form:select>
<br>
</div>
<input class=" btn btn-secondary enregistrer" type="submit" value="Enregistrer"/>

</form:form>
<img class="photo" alt="titephoto" src="img/serrermain.jpg">
        
            </div>
        </div>
    </div>
</div>


<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
