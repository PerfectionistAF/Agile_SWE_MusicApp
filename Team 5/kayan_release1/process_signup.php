<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kayan_demo";

if (empty($_POST["name"])) {
    die("Name is required");
}

if ( ! filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
    die("Valid email is required");
}

if (strlen($_POST["password"]) < 8) {
    die("Password must be at least 8 characters");
}

if ( ! preg_match("/[a-z]/i", $_POST["password"])) {
    die("Password must contain at least one letter");
}

if ( ! preg_match("/[0-9]/", $_POST["password"])) {
    die("Password must contain at least one number");
}

if ($_POST["password"] !== $_POST["password_confirmation"]) {
    die("Passwords must match");
}

$password_hash = password_hash($_POST["password"], PASSWORD_DEFAULT);


try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  // begin the transaction
  $conn->beginTransaction();
  // our SQL statements
  $conn->exec("INSERT INTO `user` (userID, user_role) 
  VALUES ('', '4');");

  $stmt = $conn->prepare("INSERT INTO `applicant`(applicantID, FullName, password, Email) 
  VALUES (:id, :name, :pass, :email);");
  $id = $conn->lastInsertId();
  $stmt->bindParam(':id', $id);
  $stmt->bindParam(':name',  $_POST["name"]);
  $stmt->bindParam(':email', $_POST["email"]);
  $stmt->bindParam(':pass', $password_hash);  
  $stmt->execute();



  // commit the transaction
  $conn->commit();
  echo "New records created successfully";
  header("Location: signup-success.html");
} 
catch(PDOException $e) {
  // roll back the transaction if something failed
  $conn->rollback();
  echo "Error: " . $e->getMessage();
}

$conn = null;
?>