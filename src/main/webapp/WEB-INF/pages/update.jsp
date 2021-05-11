<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 

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
            <h4>Modification d'un Manager/Employee</h4>
            
<form:form modelAttribute="employee" action="update"  method="post">
<form:hidden path="empId"/>
<div class="champs">
<label>Votre Prénom</label>
<form:input path="firstName" value="${firstName}"/>
<form:errors path="firstName" />


<label>Votre nom</label>
<form:input path="lastName" value="${lastName}"/>
<form:errors path="lastName" />

<label>Votre titre</label>
<form:input path="title" value="${title}"/>
<form:errors path="title" />


<label>Votre date d'embauche</label>
<form:input path="startDate" type="date" value="${startDate}"/>
<form:errors path="startDate" />


<label>Id de votre manager</label>
<%-- <form:select path="manager" >
<form:option value="1" label="1"/>
<form:option value="2" label="2"/>
<form:option value="3" label="3"/>
</form:select> --%>
<br>
</div>
<input class="Modifier" type="submit" value="Enregistrer"/>
</form:form>
<img class="photo" alt="titephoto" src="img/update.jpg">
        
            </div>
        </div>
    </div>
</div>


<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
