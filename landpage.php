<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing page</title>
    <style>
        body {
            background-color: #A9A9A9;
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        h1 {
             margin-top: 50px;
            font-size: 24px;
            color: #333;
        }
        p {
            font-size: 18px;
            color: #333;
        }
        select, button {
            margin-top: 20px;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
           button {
            background-color: blue;
            color: white;
            cursor: pointer;
        }
        button.historico {
            background-color: green;
            margin-top: 10px;
        }
          ul {
            text-align: left;
            margin: 20px auto;
            padding: 0;
            list-style: none;
            max-width: 300px;
            text-align: center;
        }
        ul li {
            background-color: #f9f9f9;
            padding: 10px;
            border: 1px solid #ccc;
            margin-bottom: 5px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <h1>Bem-vindo(a), <?php echo $_SESSION['nome']; ?>!</h1>
    <p><em>Escolha uma fórmula para calcular</em></p>
    
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
        <select name="formulas">
            <option value="quadrado">Quadrado</option>
            <option value="circulo">Círculo</option>
            <option value="retangulo">Retângulo</option>
            <option value="triangulo">Triângulo</option>
            <option value="potencia">Potência</option>
            <option value="funcaoquadratica">Função Quadrática</option>
            <option value="juros">Juros</option>
            <option value="amortizacao">Amortização</option>
            <option value="pitagoras">Teorema de Pitágoras</option>
            <option value="progressaoaritmetica">Progressão Aritmética</option>
            <option value="progressaogeometrica">Progressão Geométrica</option>
    </select>
        <br>
        <button type="submit" name="botao">Calcular</button>
         </form>
    
    <form method="POST">
        <button type="submit" name="historico" class="historico">Ver Histórico</button>
     </form>

    <?php
    $hostname = "127.0.0.1";
    $user = "root";
    $password = "";
    $database = "menuformulas";

    $conexao = new mysqli($hostname, $user, $password, $database);

    if ($conexao->connect_errno) {
        echo "<p>Erro ao conectar ao banco de dados: " . $conexao->connect_error . "</p>";
         exit();

    }

    if (isset($_POST['formulas'])) {
        $escolha = $_POST['formulas'];

        $sql = "INSERT INTO formulas (nome_da_formula) VALUES ('$escolha')";
        $conexao->query($sql);

        switch ($escolha) {
            case 'circulo':
                header('Location: circulo.php');
                exit;
            case 'quadrado':
                header('Location: quadrado.php');
                exit;
            case 'retangulo':
                header('Location: retangulo.php');
                exit;
            case 'triangulo':
                header('Location: triangulo.php');
                exit;
            case 'potencia':
                header('Location: potencia.php');
                exit;
            case 'funcaoquadratica':
                header('Location: funcaoquadratica.php');
                exit;
            case 'juros':
                header('Location: juros.php');
                exit;
            case 'amortizacao':
                header('Location: amortizacao.php');
                exit;
            case 'pitagoras':
                header('Location: pitagoras.php');
                exit;
            case 'progressaoaritmetica':
                header('Location: progrssaoaritmetica.php');
                exit;
            case 'progressaogeometrica':
                header('Location: progrssaogeometrica.php');
                exit;
            default:
                echo "<p>Escolha uma opção válida.</p>";
        }
    }


    if (isset($_POST['historico'])) {
        $sql = "SELECT nome_da_formula FROM formulas ORDER BY id DESC LIMIT 5";
        $resultado = $conexao->query($sql);

        if ($resultado->num_rows > 0) {
            echo "<h3>Ultimas fórmulas usadas</h3><ul>";
            while ($row = $resultado->fetch_assoc()) {
                echo "<li>" . $row['nome_da_formula'] . "</li>";
            }
            echo "</ul>";
        } else {
            echo "<p>Sem histórico disponível.</p>";
        }
    }


    $conexao->close();
?>


</body>
</html>
