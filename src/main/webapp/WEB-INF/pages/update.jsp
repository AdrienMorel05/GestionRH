<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modifier un employée</title>
<link rel="stylesheet" type="text/css" href="styles/styleheaderfooter.css" />
<link rel="stylesheet" type="text/css" href="styles/styleajout.css" />


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</head>
<body>
 
<jsp:include page="header.jsp"></jsp:include>    

<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
<div class="form-login">
            <h4><spring:message code="form.update"></spring:message> </h4>
            
<form:form modelAttribute="employee" action="update"  method="post">
<form:hidden path="empId"/>
<div class="champs">
<label><spring:message code="form.firstname"></spring:message> </label>
<form:input path="firstName" value="${firstName}"/>
<form:errors path="firstName" />


<label><spring:message code="form.name"></spring:message> </label>
<form:input path="lastName" value="${lastName}"/>
<form:errors path="lastName" />

<label><spring:message code="form.title"></spring:message> </label>
<form:input path="title" value="${title}"/>
<%-- <form:select path="title" value="${title}">
	<option value="null"><spring:message code="label.addtitle"></spring:message></option>
	<option value="President"><spring:message code="label.president"></spring:message></option>
	<option value="Vice President"><spring:message code="label.vicepresident"></spring:message></option>
	<option value="Treasurer"><spring:message code="label.treasurer"></spring:message></option>
	<option value="Operations Manager"><spring:message code="label.operationmanager"></spring:message></option>
	<option value="Loan Manager"><spring:message code="label.loanmanager"></spring:message></option>
	<option value="Head Teller"><spring:message code="label.headteller"></spring:message></option>
	<option value="Teller"><spring:message code="label.teller"></spring:message></option>
</form:select> --%>
<form:errors path="title" />


<label><spring:message code="form.date"></spring:message> </label>
<form:input path="startDate" type="date" value="${startDate}"/>
<form:errors path="startDate" />


<label><spring:message code="form.manager"></spring:message> </label>
<form:select path="manager">
	<option value="${manager}">${manager}</option>
		<c:forEach var="listmanager" items="${listmanager}">
	<c:choose>	
	<c:when test="${employee.manager.empId == listmanager.empId}"><option value="${listmanager.empId}" selected="selected">${listmanager}</option></c:when>
	<c:when test="${employee.manager.empId != listmanager.empId}"><option value="${listmanager.empId}">${listmanager}</option></c:when>
	</c:choose>
	</c:forEach>
	
</form:select>
<br>
</div>
<input class=" btn btn-secondary enregistrer" type="submit" value="<spring:message code="form.modifier"></spring:message> "/>
<a href="listemployee"><button style="width: 10%;" type="button" class="btn btn-secondary enregistrer"><spring:message code="label.cancel"></spring:message></button></a>
</form:form>

<img class="photo" alt="titephoto" src="img/upp.jpg">
        
            </div>
        </div>
    </div>
</div>


<br><br>
	<p style="background-color: #333; color:#fff; text-align: center; height: 100px; padding-top:40px;" > © Morel Adrien / Formation CDA 2021 </p>
</body>
</html>