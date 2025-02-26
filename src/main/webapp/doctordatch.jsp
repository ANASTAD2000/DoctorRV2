<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.doctorrv.models" %>
<%
User user = (User) session.getAttribute("user");
    if(user == null || !"doctor".equals(user.getRole())) {
        response.sendRedirect(request.getContextPath() + "/login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DoctorRV - Espace Médecin</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .welcome-banner {
            background-color: #007bff;
            color: white;
            padding: 40px 0;
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">DoctorRV</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Tableau de bord</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Mes rendez-vous</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Calendrier</a>
                    </li>
                </ul>
                <div class="d-flex">
                    <div class="dropdown">
                        <button class="btn btn-outline-light dropdown-toggle" type="button" id="userMenu" data-bs-toggle="dropdown" aria-expanded="false">
                            Dr. <%= user.getFullName() %>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userMenu">
                            <li><a class="dropdown-item" href="#">Mon profil</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="<%= request.getContextPath() %>/logout">Déconnexion</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- Welcome Banner -->
    <div class="welcome-banner">
        <div class="container text-center">
            <h1>Bienvenue dans votre espace médecin, Dr. <%= user.getFullName() %></h1>
            <p class="lead">Gérez votre agenda de consultations</p>
            <% if (user.getSpecialization() != null && !user.getSpecialization().isEmpty()) { %>
                <p>Spécialisation: <%= user.getSpecialization() %></p>
            <% } %>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container my-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card shadow mb-4">
                    <div class="card-body text-center p-5">
                        <h2 class="card-title">Vous êtes connecté à votre espace médecin</h2>
                        <p class="card-text">Cette page est protégée par des filtres Java EE et n'est accessible qu'aux utilisateurs authentifiés avec le rôle "doctor".</p>
                        <p class="card-text">À partir de cette page, vous pourrez gérer votre calendrier de consultations, voir vos rendez-vous à venir et consulter l'historique de vos patients.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3">
        <div class="container">
            <p class="mb-0">&copy; 2025 DoctorRV. Tous droits réservés.</p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>