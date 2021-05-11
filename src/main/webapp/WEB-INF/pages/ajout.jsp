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
<label>Votre Prénom</label>
<form:input path="firstName"/>
<form:errors path="firstName" />


<label>Votre nom</label>
<form:input path="lastName"/>
<form:errors path="lastName" />

<label>Votre titre</label>
<form:select path="title">
	<option value="null">Sélectionnez votre poste</option>
	<option value="President">President</option>
	<option value="Vice President">Vice President</option>
	<option value="Treasurer">Trésorier</option>
	<option value="Operations Manager">directeur des opérations</option>
	<option value="Loan Manager">gestionnaire de pret</option>
	<option value="Head Teller">Chef de caisse</option>
	<option value="Teller">Caissier</option>
</form:select>
<form:errors path="title" />

<label>Votre date d'embauche</label>
<form:input path="startDate" type="date"  />
<form:errors path="startDate" />

<label>Id de votre manager</label>
<form:select path="manager">
	<option value="null"></option>
		<c:forEach var="manager" items="${manager}">
	<option value="${manager.empId}">${manager}</option>
	</c:forEach>
	
</form:select>
<br>
</div>
<input class="enregistrer" type="submit" value="Enregistrer"/>

</form:form>
<img class="photo" alt="titephoto" src="img/serrermain.jpg">
        
            </div>
        </div>
    </div>
</div>


<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
