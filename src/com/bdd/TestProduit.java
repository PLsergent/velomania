package com.bdd;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;

public class TestProduit {
    List<String> produits = new ArrayList<String>();

    public List<String> executerTests (HttpServletRequest request ){
        String url = "jdbc:mysql://localhost:3306/velomania";
        String utilisateur = "root";
        String motDePasse = "aqmplo31";
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        try {
            connexion = DriverManager.getConnection(url, utilisateur, motDePasse);

            statement = connexion.createStatement();

            resultat = statement.executeQuery("SELECT * FROM Produits;");

            while (resultat.next()) {
                String name = resultat.getString("nom");
                int prix = resultat.getInt("prix");
                produits.add(name + " : " + prix);
            }
        } catch (SQLException e) {
            produits.add("Erreur lors de la connexion : <br/>"
                    + e.getMessage());
        }
        return produits;

    }
}
