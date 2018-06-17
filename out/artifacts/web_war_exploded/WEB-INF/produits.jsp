<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<link href="index.css" rel="stylesheet" type="text/css">
<header class="header">
    <nav class="topnav">
        <a href="/">Accueil</a>
        <a href="connexion">Connexion</a>
        <a href="form">Inscription</a>
        <a href ="produits">Produits</a>
        <a href="">Panier</a>
        <a href="more">A Propos</a>
        <a href="deconnexion">Deconnexion</a>
    </nav>
</header>
<head>
    <meta charset="utf-8" />
    <title>Produits</title>
    <link type="text/css" rel="stylesheet" href="index.css" />
</head>
<body>
<h2>Produits disponibles</h2>
<c:forEach items="${ produits }" var="produit" varStatus="boucle">
    <p>${ boucle.count }. ${ produit }</p>
</c:forEach>
</body>
</html>