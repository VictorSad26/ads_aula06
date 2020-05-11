<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cadastrar Filme</title>
<!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
<h1 class="text-center" >Novo Filme</h1>
	<p class="text-center"> Digite os dados do filme para cadastrar</p>
	<br>
	<br>
	
	<form class="form-horizontal" action="manter_filmes.do" method="POST">
	  <div class="form-group">
	    <label for="titulo" class="col-sm-2 control-label">Título do Filme</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" name="titulo" placeholder="Titulo">
	   </div>
	 </div>
	 
	 <div class="form-group">
	    <label for="descricao" class="col-sm-2 control-label">Descrição</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" name="descricao" placeholder="Descrição">
	   </div>
	 </div>
	  
	 <div class="form-group">
	    <label for="diretor" class="col-sm-2 control-label">Diretor</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" name="diretor" placeholder="Diretor">
	   </div>
	 </div>
	 
	<div class="form-group">
	    <label for="genero" class="col-sm-2 control-label">Gênero</label>
	    <div class="col-sm-10">
	    <select style=width:20% class="form-control" name="genero" >
	    <c:forEach var="genero" items="${generos}">
			<option value="${genero.id}">${genero.nome}</option>
		</c:forEach>
	    </select>
	   </div>
	 </div>	
	 
	 <div class="form-group">
	    <label for="Lancamento" class="col-sm-2 control-label">Lançamento</label>
	    <div class="col-sm-10">
	      <input style=width:20% type="date" class="form-control" name="data_lancamento" placeholder="Lançamento">
	   </div>
	 </div>
	 
	  <div class="form-group">
	    <label for="Popularidade" class="col-sm-2 control-label">Popularidade</label>
	    <div class="col-sm-10">
	      <input style=width:20% type="number" class="form-control" name="popularidade" placeholder="Popularidade">
	   </div>
	 </div>
	 
	  <div class="form-group">
	    <label for="Poster" class="col-sm-2 control-label">URL do Pôster</label>
	    <div class="col-sm-10">
	      <input style=width:20% type="text" class="form-control" name="poster_path" placeholder="Poster">
	   </div>
	 </div>
	 
	 <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	      <input type="submit" name="acao" value="inserir" class="btn btn-primary">
	    </div>
	 </div>
	</form>
  </div>


		
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>