<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DoctorRV - Accueil</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .banner {
            background-color: #28a745;
            color: white;
            padding: 60px 0;
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">DoctorRV</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logIn.jsp">Connexion</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Inscription</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Banner -->
    <div class="banner text-center">
        <div class="container">
            <h1>DoctorRV</h1>
            <p class="lead">Système de Réservation de Rendez-Vous Médicaux</p>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <div class="card-body p-4">
                        <h2 class="card-title text-center mb-4">Bienvenue sur DoctorRV</h2>
                        <p class="card-text">DoctorRV est un système de réservation de rendez-vous médicaux qui permet aux patients de prendre rendez-vous avec leurs médecins préférés.</p>
                        <p class="card-text">Notre plateforme vous permet de gérer facilement vos rendez-vous médicaux en quelques clics.</p>
                        <div class="d-grid gap-2 col-6 mx-auto mt-4">
                            <a href="logIn.jsp" class="btn btn-primary">Se connecter</a>
                            <a href="register.jsp" class="btn btn-outline-secondary">Créer un compte</a>
                        </div>
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