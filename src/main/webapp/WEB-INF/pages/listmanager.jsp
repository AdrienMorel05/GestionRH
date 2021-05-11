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
                    <h3 class="panel-title">Liste de tous les Managers</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                   <a href="ajout"><button type="button" class="btn btn-sm btn-primary btn-create">Ajouter</button></a>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th>Prénom</th>
                        <th>Nom</th>
                        <th>Titre</th>
                        <th>Date d'embauche</th>
                        <th>Action</th>
                    </tr> 
                  </thead>
                   
                  <c:forEach var="list" items="${list}">
                  
                  <tbody>
                          <tr>
                          <th type="hidden">
                            <th><c:out value="${list.firstName}" /></th>
                        	<th><c:out value="${list.lastName}" /></th>
                        	<th><c:out value="${list.title}" /></th>
                        	<th><c:out value="${list.startDate}" /></th>
                             <td align="center">
                              <a class="badge rounded-pill bg-success">Edit</a>
							  <a class="badge rounded-pill bg-danger" 
							  href="delete?empId=${list.empId}"
							  onclick="return confirm('Are you sure to delete?')" >
							  Delete</a>
                            </td>
                          </tr>
                        </tbody>
                   </c:forEach>       
                        
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
