<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DoctorRV - Inscription</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .banner {
            background-color: #28a745;
            color: white;
            padding: 30px 0;
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
                        <a class="nav-link" href="index.jsp">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logIn.jsp">Connexion</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="register.jsp">Inscription</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Banner -->
    <div class="banner text-center">
        <div class="container">
            <h1>Inscription</h1>
            <p class="lead">Créez votre compte DoctorRV</p>
        </div>
    </div>

    <!-- Registration Form -->
    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <div class="card-body p-4">
                        <h2 class="card-title text-center mb-4">Créer un compte</h2>
                        
                        <% if(request.getAttribute("errorMessage") != null) { %>
                            <div class="alert alert-danger" role="alert">
                                <%= request.getAttribute("errorMessage") %>
                            </div>
                        <% } %>
                        
                        <form action="register" method="post">
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="fullName" class="form-label">Nom complet</label>
                                    <input type="text" class="form-control" id="fullName" name="fullName" required>
                                </div>
                                <div class="col-md-6">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                            </div>
                            
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="password" class="form-label">Mot de passe</label>
                                    <input type="password" class="form-control" id="password" name="password" required
                                           minlength="8" placeholder="8 caractères minimum">
                                </div>
                                <div class="col-md-6">
                                    <label for="phone" class="form-label">Numéro de téléphone</label>
                                    <input type="tel" class="form-control" id="phone" name="phone" placeholder="Optionnel">
                                </div>
                            </div>
                            
                            <div class="mb-3">
                                <label for="role" class="form-label">Type de compte</label>
                                <select class="form-select" id="role" name="role" onchange="toggleSpecialization()">
                                    <option value="patient" selected>Patient</option>
                                    <option value="doctor">Médecin</option>
                                </select>
                            </div>
                            
                            <div class="mb-3" id="specializationGroup" style="display: none;">
                                <label for="specialization" class="form-label">Spécialisation</label>
                                <input type="text" class="form-control" id="specialization" name="specialization">
                            </div>
                            
                            <div class="d-grid gap-2 mt-4">
                                <button type="submit" class="btn btn-primary">S'inscrire</button>
                            </div>g
                        </form>
                        
                        <div class="text-center mt-3">
                            <p>Vous avez déjà un compte? <a href="logIn.jsp">Connectez-vous ici</a></p>
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
    
    <!-- Custom Script -->
    <script>
        function toggleSpecialization() {
            var role = document.getElementById("role").value;
            var specializationGroup = document.getElementById("specializationGroup");
            if (role === "doctor") {
                specializationGroup.style.display = "block";
            } else {
                specializationGroup.style.display = "none";
            }
        }
    </script>
</body>
</html>