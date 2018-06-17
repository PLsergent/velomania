package com.bean;

import java.util.ArrayList;

public class Panier {
    
    private ArrayList<Produit> produits;

    public ArrayList<Produit> getProduits() {
        return produits;
    }

    public void addProduit(Produit produit) {
        produits.add(produit);
    }
}
