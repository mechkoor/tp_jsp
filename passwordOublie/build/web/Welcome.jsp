<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenue</title>
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

        .welcome-container {
            text-align: center;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 5px;
            box-shadow: 0px 0px 5px 0px #888;
        }

        .welcome-text {
            font-size: 100px; /* Augmentation de la taille de la police pour "Bienvenue" */
        }

        .name-text {
            font-size: 70px; /* Augmentation de la taille de la police pour "Nom et Prénom" */
        }
    </style>
</head>
<body>
    <div class="welcome-container">
        <h1 class="welcome-text">Bienvenue</h1>
        <p class="name-text">${nom}</p> <!-- Remplacez "John Doe" par le nom que vous souhaitez afficher -->
    </div>
</body>
</html>
