package com.servlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import com.bdd.TestProduit;

@WebServlet(name = "Produits")
public class Produits extends HttpServlet {
    public static final String VUE = "/WEB-INF/produits.jsp";
    public static final String ATT_MESSAGES = "produits";

    private List<String> produits = new ArrayList<String>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TestProduit testp = new TestProduit();
        List<String> produits = testp.executerTests( request );

        /* Enregistrement de la liste des messages dans l'objet requête */
        request.setAttribute( ATT_MESSAGES, produits );
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
}
