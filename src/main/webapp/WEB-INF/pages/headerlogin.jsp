<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
 <div class="container-fluid header">
        <header>
			<img alt="bandeau header" src="img/header.png">
		</header>
    </div>
    <!-- end header -->

    <!-- menu navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarColor01">
          <ul class="navbar-nav mr-auto ">
            <li class="nav-item active">
              <a class="nav-link" href="listmanager"><spring:message code="label.home"></spring:message> </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="aboutus"><spring:message code="label.aboutus"></spring:message></a>
            </li>
            <li></li>
          </ul>
          </div>
          
   
          
          <form id="nav_droite" class="form-inline my-2 my-lg-0">
          	 <a href="${pageContext.request.contextPath}/?lang=fr"> <img src="img/france.png" alt="Français"/></a>
		    <a href="${pageContext.request.contextPath}/?lang=en"> <img src="img/angleterre.png" alt="English"/></a>
            <a href="/" class="phlogin"><img  src="img/login.png" alt="login"/></a>
          </form>
        
    </nav>
    <!-- end navbar -->