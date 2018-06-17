<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<link href="index.css" rel="stylesheet" type="text/css">
<header class="header">
    <nav class="topnav">
        <a href="/">Accueil</a>
        <a href="connexion">Connexion</a>
        <a href="form">Inscription</a>
        <a href="panier">Panier</a>
        <a href="more">A Propos</a>
        <a href="deconnexion">Deconnexion</a>
    </nav>
</header>
<head>
    <meta charset="utf-8" />
    <title>Inscription</title>
    <link type="text/css" rel="stylesheet" href="inscription.css" />
</head>
<body>
<form method="post" action="form">
    <fieldset>
        <legend>Inscription</legend>
        <p>Vous pouvez vous inscrire via ce formulaire.</p>

        <label for="email">Adresse email <span class="requis">*</span></label>
        <input type="email" id="email" name="email" value="" size="20" maxlength="60" />
        <span class="erreur">${form.erreurs['email']}</span>
        <br />

        <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
        <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
        <span class="erreur">${form.erreurs['motdepasse']}</span>
        <br />

        <label for="confirmation">Confirmation du mot de passe <span class="requis">*</span></label>
        <input type="password" id="confirmation" name="confirmation" value="" size="20" maxlength="20" />
        <span class="erreur">${form.erreurs['confirmation']}</span>
        <br />

        <label for="nom">Nom d'utilisateur</label>
        <input type="text" id="nom" name="nom" value="" size="20" maxlength="20" />
        <span class="erreur">${form.erreurs['nom']}</span>
        <br />

        <input type="submit" value="Inscription" class="sansLabel" />
        <br />
        <p>${form.resultat}</p>
    </fieldset>
</form>
</body>
</html>