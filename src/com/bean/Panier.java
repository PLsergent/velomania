package com.bean;

import java.util.ArrayList;

public class Panier {
    
    private Produit<ArrayList> produits;

    public Produit<ArrayList> getProduits() {
        return produits;
    }

    public void addProduit(Produit produit) {
        produits.add(produit);
    }
}
