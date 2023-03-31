<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empresa cadastrada</title>
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

footer {
  background-color:#006400;
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
	
	<c:if test="${not empty empresa }">	
	<h3>	Empresa ${ empresa } cadastrada com sucesso!  </h3>
	</c:if>

	<c:if test="${empty empresa }">	
	<h3>	Nenhuma Empresa cadastrada!  </h3>
	</c:if>

<br><br><br><br><br>

<footer>
  <p>Desenvolvido por Thamyres Cavalcante</p>
</footer>


</body>
</html>


