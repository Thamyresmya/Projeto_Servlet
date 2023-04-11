<%@page import="br.com.alura.gerenciador.modelo.Empresa"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Empresas</title>
</head>

<style>

h3 {
  text-align: center;
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

footer {
  background-color: #006400;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
</style>

<body>
		
		<c:import url="logout-parcial.jsp" />
	
		Usuario Logado: ${usuarioLogado.login}
	
		<br><br><br>

		<c:if test="${not empty empresa }">	
			Empresa ${ empresa } cadastrada com sucesso!
		</c:if>
		
		<br>
		
		<h3>Lista de Empresas:</h3>
<div>	
		<ul>
			<c:forEach items="${empresas}" var="empresa" >					
				<li> 
					${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy" /> 
					<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">Editar</a>
					<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">Remover</a>					
				</li> 
			</c:forEach>		
		</ul>
</div>	

<br><br><br><br><br>

<footer>
  <p>Desenvolvido por Thamyres Cavalcante</p>
</footer>
		
</body>
</html>