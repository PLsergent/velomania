<%@ page pageEncoding="UTF-8" %>
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
        <a href="deconnexion">Déconnexion</a>
    </nav>
</header>
<head>
    <meta charset="utf-8" />
    <title>Connexion</title>
    <link type="text/css" rel="stylesheet" href="inscription.css" />
</head>
<body>
<form method="post" action="connexion">
    <fieldset>
        <legend>Connexion</legend>
        <p>Vous pouvez vous connecter via ce formulaire.</p>

        <label for="email">Adresse email <span class="requis">*</span></label>
        <input type="email" id="email" name="email" value="" size="20" maxlength="60" />
        <span class="erreur">${form.erreurs['email']}</span>
        <br />

        <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
        <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
        <span class="erreur">${form.erreurs['motdepasse']}</span>
        <br />

        <input type="submit" value="Connexion" class="sansLabel" />
        <br />

        <p>${form.resultat}</p>
    </fieldset>
</form>
</body>
</html>