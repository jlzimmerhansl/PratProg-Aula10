<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html lang="pt-br">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Visualizar Pais</title>
	
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	
</head>

<body>
	<!-- Menu superior -->
	
	<c:import url="Menu.jsp"/>
	
	<!-- Container Principal -->
	
	<div id="main" class="container">
	
		<h3 class="page-header">Visualizar País #${visupais.id}</h3>
		
		<div class="row">
                <div class="col-md-6">
                    <p><strong>Nome</strong>
                    </p>
                    <p>
                        ${visupais.nome}
                    </p>
                </div>
            
            <div class="row">
                <div class="col-md-6">
                    <p><strong>População</strong>
                    </p>
                    <p>
                        ${visupais.populacao }
                    </p>
                </div>
                
                </div>
                
                
                <div class="col-md-6">
                    <p><strong>Área</strong>
                    </p>
                    <p>
                        ${visupais.area }
                    </p>
                </div>
                
                <div class="row">
                <div class="col-md-6">
                    <p><strong>Continente</strong>
                    </p>
                    <p>
                        ${visupais.continente }
                    </p>
                </div>
            </div>
            <hr />
            
					
            <div id="actions" class="row">
                <div class="col-md-12">
                    <a href="GerenciarPaises.jsp" class="btn btn-info">Voltar</a>
                </div>
            </div>
	
	
	
	
	
	</div>
	
	  <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
</body>
</html>