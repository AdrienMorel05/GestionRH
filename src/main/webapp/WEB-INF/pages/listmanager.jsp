<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste Manager</title>
<link rel="stylesheet" type="text/css" href="styles/styleheaderfooter.css" />
<link rel="stylesheet" type="text/css" href="styles/stylelist.css" />


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">

<!-- Insérer cette balise "script" après celle de Bootstrap -->
<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>


</head>
<body>
<jsp:include page="header.jsp"></jsp:include>    
    
<div id="tableau"> 
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title"><spring:message code="label.titretableaumanager"></spring:message></h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                   <a href="ajout"><button type="button" class="btn btn-sm btn-primary btn-create"><spring:message code="label.addemployee"></spring:message></button></a>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list" data-toggle="table"
						data-search="false" data-show-columns="false" data-pagination="true">
                  <thead>
                    <tr>
                        <th data-sortable="true" data-field="firstName"><spring:message code="label.firstname"></spring:message></th>
                        <th data-sortable="true" data-field="lastName"><spring:message code="label.name"></spring:message></th>
                        <th data-sortable="true" data-field="title"><spring:message code="label.title"></spring:message></th>
                        <th data-sortable="true" data-field="startDate"><spring:message code="label.startdate"></spring:message></th>
                        <th style="text-align:center">Action</th>
                    </tr> 
                  </thead>

                  <tbody>
                  <c:forEach var="list" items="${list}">
                          <tr>
                            <th><c:out value="${list.firstName}" /></th>
                        	<th><c:out value="${list.lastName}" /></th>
                        	<th><c:out value="${list.title}" /></th>
                        	<th><c:out value="${list.startDate}" /></th>
                               <td align="center">
                             
                            <a class="badge rounded-pill bg-info" href="sub?empId=${list.empId}">List of subordinate</a>
                            
                            </td>
                          </tr>
                   </c:forEach>       
                        </tbody>
                        
                </table>
            
            
            
            
              </div>
            </div>

</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<p style="background-color: #333; color:#fff; text-align: center; height: 100px; padding-top:40px;" > © Morel Adrien / Formation CDA 2021 </p>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>
