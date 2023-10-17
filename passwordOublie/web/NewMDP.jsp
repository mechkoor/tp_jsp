<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h1>Saisissez vos mots de passe</h1>
    
    <form action="NewMDP" method="post">
        <label for="password">Mot de passe :</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <label for="confirmPassword">Confirmez le mot de passe :</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required><br><br>
        <h4>${msg}</h4>
        <button type="submit">Valider</button>
    </form>
</body>
</html>
