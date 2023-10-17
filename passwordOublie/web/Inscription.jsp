<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #ffc800, #0074ff, #ff1493);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center; /* Centrer horizontalement */
            animation: gradientAnimation 5s linear infinite alternate; /* Animation de dégradé */
        }

        @keyframes gradientAnimation {
            0% {
                background: linear-gradient(135deg, #ffc800, #0074ff, #ff1493);
            }
            100% {
                background: linear-gradient(135deg, #ff1493, #ffc800, #0074ff);
            }
        }

        .container {
            max-width: 800px; /* Augmentation de la largeur du conteneur */
            margin: 0 auto;
            padding: 40px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 5px;
            box-shadow: 0px 0px 5px 0px #888;
        }
        .form-label, .form-control {
            font-size: 24px;
        }
        .custom-links {
            font-size: 22px;
        }

        .centered-button {
            display: flex;
            justify-content: center;
        }

        .professional-input {
            background-color: #f8f9fa;
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 12px;
        }

        .professional-button {
            font-size: 28px;
            background-color: #0074ff;
            border: none;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .professional-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 style="font-size:60px;text-align: center;">Inscription</h1>
        <form action="Inscription" method="post">
            <div class="mb-3">
                <label for="nom" class="form-label">Nom :</label>
                <input type="text" class="form-control professional-input" id="nom" name="nom" required>
            </div>
            <div class="mb-3">
                <label for="prenom" class="form-label">Prénom :</label>
                <input type="text" class="form-control professional-input" id="prenom" name="prenom" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email :</label>
                <input type="email" class="form-control professional-input" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="motdepasse" class="form-label">Mot de passe :</label>
                <input type="password" class="form-control professional-input" id="motdepasse" name="motdepasse" required>
            </div>
            <div class="mb-3">
                <label for="date" class="form-label">Date :</label>
                <input type="date" class="form-control professional-input" id="date" name="date" value="">
            </div>

            <div class="centered-button">
                <button type="submit" class="professional-button">Valider</button>
            </div>
        </form>
    </div>
</body>
</html>
