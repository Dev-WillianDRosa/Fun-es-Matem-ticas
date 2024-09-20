<?php
include('conexao.php');
session_start();

if (isset($_GET['logout'])) {
    session_destroy();
    header("Location: index.php"); 
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') { 
    if (empty($_POST['email'])) {
        echo 'Insira o email para prosseguir';
    } elseif (empty($_POST['senha'])) {
        echo 'Insira a senha para prosseguir';
    } else {
        $email = $mysqli->real_escape_string($_POST['email']); 
        $senha = $mysqli->real_escape_string($_POST['senha']); 

        $sql = "SELECT * FROM usuarios WHERE email = '$email' AND senha = '$senha'";
        $sql2 = $mysqli->query($sql) or die("Falha na consulta: " . $mysqli->error);


        $qualidad = $sql2->num_rows;

        echo "Número de linhas retornadas: $qualidad <br>";

        if ($qualidad == 1) {
            $usuario = $sql2->fetch_assoc();
            
            $_SESSION['id'] = $usuario['id'];
            $_SESSION['nome'] = $usuario['nome'];

            echo 'Login bem-sucedido';

            header('Location: landpage.php');
            exit();

        } else {
            echo '<p>Email ou senha estão errados</p>';
        }
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de login</title>
</head>
<body>
<form action="" method="POST" autocomplete="off">
    <label for="email">Email:
        <input type="text" name="email" required><br><br>
    </label>
    <label for="senha">Senha:
        <input type="password" name="senha" required><br><br>
    </label>
    <button type="submit">Login</button>
</form>
</body>
</html>
