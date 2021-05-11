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


</head>
<body>
<jsp:include page="header.jsp"></jsp:include>    
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Liste des Employee sans Managers</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
<!--                      <button type="button" class="btn btn-sm btn-primary btn-create" onclick="return confirm('Are you sure to Add Manager?')" >Ajouter manager</button></a>
 -->                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th>ID</th>
                        <th>Prénom</th>
                        <th>Nom</th>
                        <th>Titre</th>
                        <th>Date d'embauche</th>
                        <th>Ajouter un manager</th>
                        <th>Valider</th>
                    </tr> 
                  </thead>
                  <form:form modelAttribute="employee" action="update"  method="post" >
                  <c:forEach var="list" items="${list}">
                  <tbody style="text-align: center;">
                          <tr style="text-align: center;">
                            <th style="text-align: center;"><c:out value="${list.empId}"/></th>
                        	<th style="text-align: center;"><c:out value="${list.firstName}" /></th>
                        	<th style="text-align: center;"><c:out value="${list.lastName}" /></th>
                        	<th style="text-align: center;"><c:out value="${list.title}" /></th>
                        	<th style="text-align: center;"><c:out value="${list.startDate}" /></th>
							<th style="text-align: center;">
								<select>
								<option value="null"></option>
								<c:forEach var="manager" items="${manager}">
                                        <option value="${manager.empId}">${manager}</option>
                                </c:forEach>
                                </select>
                                </th>
                                <th style="text-align: center;">
                     <button type="submit" class="btn btn-sm btn-primary btn-create" onclick="return confirm('Are you sure to Add Manager?')" >Ajouter manager</button></a>
                            </th>
                          </tr>
                     
                        </tbody>
                        </c:forEach>
                </form:form>        
                </table>
            
            
            
            
              </div>
              <div class="panel-footer">
                <div class="row">
                  <div class="col col-xs-4">Page 1 of 5
                  </div>
                  <div class="col col-xs-8">
                    <ul class="pagination hidden-xs pull-right">
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                    </ul>
                    <ul class="pagination visible-xs pull-right">
                        <li><a href="#">«</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>

</div>


<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
