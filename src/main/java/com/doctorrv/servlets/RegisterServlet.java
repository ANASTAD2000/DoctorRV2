package com.doctorrv.servlets;

import com.doctorrv.models.User;
import com.doctorrv.dao.UserDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;
    
    @Override
    public void init() {
        userDAO = new UserDAO();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Récupération des paramètres du formulaire
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String role = request.getParameter("role");
        String specialization = request.getParameter("specialization");
        
        // Validation de base
        if (fullName == null || fullName.trim().isEmpty() ||
            email == null || email.trim().isEmpty() ||
            password == null || password.length() < 8) {
            
            request.setAttribute("errorMessage", "Tous les champs obligatoires doivent être remplis correctement.");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
        
        // Vérifier si l'email existe déjà
        if (userDAO.emailExists(email)) {
            request.setAttribute("errorMessage", "Cet email est déjà utilisé.");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
        
        // Création de l'utilisateur
        User user;
        if ("doctor".equals(role) && specialization != null && !specialization.trim().isEmpty()) {
            user = new User(fullName, email, password, phone, specialization);
        } else {
            user = new User(fullName, email, password, phone);
        }
        
        // Enregistrement de l'utilisateur
        if (userDAO.registerUser(user)) {
            // Redirection vers la page de connexion
            request.setAttribute("successMessage", "Inscription réussie! Vous pouvez maintenant vous connecter.");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else {
            request.setAttribute("errorMessage", "Erreur lors de l'inscription. Veuillez réessayer.");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirection vers la page d'inscription
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }
}