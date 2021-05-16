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
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title"><spring:message code="label.titretableauparam"></spring:message></h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                  
<!--                      <button type="button" class="btn btn-sm btn-primary btn-create" onclick="return confirm('Are you sure to Add Manager?')" >Ajouter manager</button></a>
 -->                  </div>
                </div>
              </div>
              <div class="panel-body">
              
                  <form:form modelAttribute="employee" action="param"  method="post" >
              
                <table class="table table-striped table-bordered table-list" data-toggle="table"
						data-search="false" data-show-columns="false" data-pagination="true">
                  <thead>
                    <tr>
                        <th data-sortable="true" data-field="empId">ID</th>
                        <th data-sortable="true" data-field="firstName"><spring:message code="label.firstname"></spring:message></th>
                        <th data-sortable="true" data-field="lastName"><spring:message code="label.name"></spring:message></th>
                        <th data-sortable="true" data-field="title"><spring:message code="label.title"></spring:message></th>
                        <th data-sortable="true" data-field="startDate"><spring:message code="label.startdate"></spring:message></th>
                        <th><spring:message code="label.addmanager"></spring:message></th>
                        <th><spring:message code="label.validate"></spring:message></th>
                    </tr> 
                  </thead>
                  <tbody style="text-align: center;">
                  <c:forEach var="list" items="${list}">
                          <tr style="text-align: center;">
                            <th style="text-align: center;"><form:label path="empId" value="${list.empId}"/>${list.empId}</th>
                        	<th style="text-align: center;"><form:label path="firstName" value="${list.firstName}" />${list.firstName}</th>
                        	<th style="text-align: center;"><form:label path="lastName" value="${list.lastName}" />${list.lastName}</th>
                        	<th style="text-align: center;"><form:label path="title" value="${list.title}" />${list.title}</th>
                        	<th style="text-align: center;"><form:label path="startDate"  value="${list.startDate}" />${list.startDate}</th>
							<th style="text-align: center;">
								<form:select path="">
								<option value="manager"></option>
								<c:forEach var="manager" items="${manager}">
                                        <option value="${manager.empId}">${manager}</option>
                                </c:forEach>
                                </form:select>
                                </th>
                                <th style="text-align: center;">
                                <input class=" btn btn-primary enregistrer" type="submit" value="Ajouter manager"/>
                                
                     <!-- onclick="return confirm('Are you sure to Add Manager?')" --> 
                            </th>
                          </tr>
                         
                     
                        </c:forEach>
                        </tbody>
                </table>
                                                <input class=" btn btn-primary enregistrer" type="submit" value="Ajouter manager"/>
                
                                </form:form>        
                
</div>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
