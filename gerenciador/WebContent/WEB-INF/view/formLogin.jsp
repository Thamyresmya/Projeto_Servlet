<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="linkEntradaServlet"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>

<style>

h3 {
text-align: center;
font-size: 30px;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
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

	
	<h3>Login de Usuário</h3>

<div>
	<form action="${linkEntradaServlet}" method="POST">	
		Login: <input type="text" name="login" />	
		Senha: <input type="password" name="senha" />	
		
		<input type="hidden" name="acao" value="Login">
		
		<input type="submit"  />
	</form>	

</div>


<br><br><br><br><br>

<footer>
  <p>Desenvolvido por Thamyres Cavalcante</p>
</footer>

</body>
</html>