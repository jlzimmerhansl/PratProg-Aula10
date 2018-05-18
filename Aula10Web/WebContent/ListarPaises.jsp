<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="model.Pais, java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Listar Paises</title>
	
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
</head>
<body>

     

<!-- Menu superior -->
	
	<c:import url="Menu.jsp"/>
	
	  
	<div id="main" class="container">
	
		<h3 class="page-header">Listar Paises</h3>
		
	<table class="table table-striped table-dark">
		<tbody>
		
			  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">População</th>
      <th scope="col">Area</th>
      <th scope="col">Continente</th>
      
      
    </tr>
  </thead>
  
		<c:forEach var="pais" items="${paiseslist}">
	

    <tr>
      <th scope="row">${pais.id}</th>
      <td>${pais.nome}</td>
      <td>${pais.populacao}</td>
      <td>${pais.area}</td>
      <td>${pais.continente}</td>
      
     
    </tr>
       
                
          	
	</c:forEach>
	
	</table>
	
	
	
	


	
	<div id="actions" class="row">
                <div class="col-md-12">
                    <a href="Listar.jsp" class="btn btn-info">Voltar</a>
                </div>
            </div>
            
	</div>
	
	  <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
          
</body>
</html>