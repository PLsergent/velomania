<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<link href="index.css" rel="stylesheet" type="text/css">
<header class="header">
    <nav class="topnav">
        <a href="/">Accueil</a>
        <a href="connexion">Connexion</a>
        <a href="form">Inscription</a>
        <a href="">Panier</a>
        <a href="more">A Propos</a>
        <a href="deconnexion">Deconnexion</a>
    </nav>
</header>
<head>
    <meta charset="utf-8" />
    <title>Tests JDBC</title>
    <link type="text/css" rel="stylesheet" href="index.css" />
</head>
<body>
<h1>Tests JDBC</h1>
<c:forEach items="${ messages }" var="message" varStatus="boucle">
    <p>${ boucle.count }. ${ message }</p>
</c:forEach>
</body>
</html>