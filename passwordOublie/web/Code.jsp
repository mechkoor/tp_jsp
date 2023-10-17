<%-- 
    Document   : Code
    Created on : 13 oct. 2023, 01:03:19
    Author     : ayoub mechkour
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                background: linear-gradient(135deg, #ffc800, #0074ff, #ff1493);
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                animation: gradientAnimation 5s linear infinite alternate;
            }

            @keyframes gradientAnimation {
                0% {
                    background: linear-gradient(135deg, #ffc800, #0074ff, #ff1493);
                }
                100% {
                    background: linear-gradient(135deg, #ff1493, #ffc800, #0074ff);
                }
            }

            form {
                max-width: 800px;
                margin: 0 auto;
                padding: 40px;
                background-color: rgba(255, 255, 255, 0.9);
                border-radius: 5px;
                box-shadow: 0px 0px 5px 0px #888;
            }

            label {
                font-size: 24px;
            }

            input {
                font-size: 20px;
                padding: 10px;
                width: 100%;
                border: 1px solid #ccc;
                border-radius: 5px;
                margin-bottom: 20px;
            }

            h2 {
                font-size: 28px;
            }

            button {
                background-color: #0074ff;
                color: #fff;
                border: none;
                border-radius: 5px;
                padding: 10px 20px;
                font-size: 28px; /* Augmentation de la taille de la police */
                cursor: pointer;
                transition: background-color 0.3s ease;
                display: block; /* Pour centrer le bouton */
                margin: 0 auto; /* Pour centrer le bouton */
            }

            button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <form action="Code" method="post">
            <label for="verificationCode">Verification Code:</label>
            <input type="text" id="verificationCode" name="verificationCode">
            <h2>${msg}</h2>
            <button type="submit">Envoyer le Code</button>
        </form>
    </body>
</html>
