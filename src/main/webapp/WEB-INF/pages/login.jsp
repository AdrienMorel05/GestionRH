<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bievenue</title>
<link rel="stylesheet" type="text/css" href="styles/styleheaderfooter.css" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />



<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
 
<jsp:include page="headerlogin.jsp"></jsp:include>    

<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">
            <h4><spring:message code="label.welcome"></spring:message></h4>
            <form:form action="manager" method="post">
            <input type="text" id="userName" class="form-control input-sm chat-input" placeholder="<spring:message code="label.userName"></spring:message>" />
            <br>
            <input type="text" id="userPassword" class="form-control input-sm chat-input" placeholder="<spring:message code="label.password"></spring:message>" />
            <br>
            <div class="wrapper">
                <input type="submit" class="btn btn-primary btn-lg btn-block" value="<spring:message code="label.submit"></spring:message>"/>
            </div>
       </form:form>
        
            </div>
        </div>
    </div>
</div>

<br><br><br><br><br>
	<p style="background-color: #333; color:#fff; text-align: center; height: 100px; padding-top:40px;" > © Morel Adrien / Formation CDA 2021 </p>

</body>
</html>
