<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<html>
	<head>
		<title>Index</title>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src='js/jquery-2.1.3.js'></script>
		<script src='js/main.js'></script>
	</head>
	<body>
		<% if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("user") != null) { session.setAttribute("user", request.getParameter("user")); } %>
		<%-- On récupère l'attribut "user" de la session pour afficher le nom de la personne qui vient sur la page --%>
		<%-- On n'affiche rien si l'attribut n'a pas été précisé --%>
		<h1>Welcome <%= session.getAttribute("user") != null ? session.getAttribute("user") : "" %> to my first web application :D</h1>
		
		<div>
			<h2>Connexion</h2>
			<form id="login">
				<input type="text" placeHolder="Login" required />
				<input type="password" placeHolder="Password" required />
				<input type="submit" value="Connexion" />
			</form>
		</div>
		
		<div>
			<h2>Inscription</h2>
			<form id="subscribe">
				<input type="text" placeHolder="Login" required />
				<input type="password" placeHolder="Password"required />
				<input type="text" placeHolder="Prénom" required />
				<input type="text" placeHolder="Nom" required />
				<input type="text" placeHolder="Date de naissance" required />
				<input type="email" placeHolder="E-mail" required />
				<input type="submit" value="Inscription" />
			</form>
		</div>
	</body>
</html>
