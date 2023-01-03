<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kayan_demo";
session_start();

if (isset($_SESSION["user_id"])) {
    
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
	// set the PDO error mode to exception
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    $sql = "SELECT * FROM `applicant`
            WHERE applicantID = {$_SESSION["user_id"]}";
            
	$stmt = $conn->prepare($sql, [PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY]);    
    $stmt->execute();
	$row = $stmt->fetch(PDO::FETCH_ASSOC);
}

?>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
    
    <h1>Home</h1>
    
    <?php if (isset($row)): ?>
        
        <p>Hello <?= htmlspecialchars($row["FullName"]) ?></p>
        
		<p><a href="apply.html">Application to Kayan</a></p>
        <p><a href="logout.php">Log out</a></p>
        
    <?php else: ?>
        
        <p><a href="login.html">Log in</a> or <a href="signup.html">sign up</a></p>
        
    <?php endif; ?>
    
</body>
</html>
    
    
    
    
    
    
    
    
    
    
    