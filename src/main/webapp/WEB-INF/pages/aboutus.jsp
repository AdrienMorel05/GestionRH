<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste de tous les employees</title>
<link rel="stylesheet" type="text/css" href="styles/styleheaderfooter.css" />
<link rel="stylesheet" type="text/css" href="styles/stylelist.css" />


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


</head>
<body>
<jsp:include page="header.jsp"></jsp:include> 
<a href="https://www.afpa.fr/formation-qualifiante/concepteur-developpeur-informatique" target="_blank"  
onclick="return confirm('Vous allez etre redirigé vers le site de l'Afpa, etes vous d'accord ?')"> 
<img src="img/aboutus.png" alt="aboutus"
style="height: 100%; width: 100%;"/> </a>
	<p style="background-color: #333; color:#fff; text-align: center; height: 100px; padding-top:40px;" > © Morel Adrien / Formation CDA 2021 </p>

</body>
</html>