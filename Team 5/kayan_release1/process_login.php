<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kayan_demo";
//$_POST['invalid_login'] = false;

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    
try {
	$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
	// set the PDO error mode to exception
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


	$sql = "SELECT * FROM applicant
			WHERE email = :email";

	$stmt = $conn->prepare($sql, [PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY]);
	$stmt->execute(['email'=>$_POST['email']]);
	$row = $stmt->fetch(PDO::FETCH_ASSOC);

 	if ($row) {
        
        if (password_verify($_POST["password"], $row["password"])) {
              
			session_start();
			session_regenerate_id();
			$_SESSION['user_id'] = $row['applicantID'];
			
            header("Location: index.php");
            exit;
        }
		else{
			echo "incorrect login";
		}
    }
	else{
		echo "User not found";
	}
    
	//$_POST['invalid_login'] = true;
	$conn = null; 

} 
catch(PDOException $e) {
	echo "Error: " . $e->getMessage();
}

    
}

?>