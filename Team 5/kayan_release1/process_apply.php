<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kayan_demo";

try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  // begin the transaction
  $conn->beginTransaction();
  // our SQL statements

  $stmt = $conn->prepare("
  UPDATE `applicant` 
  SET DOB=:dob,NationalID=:natID,College=:uni,
  Faculty=:fac,YearOfStudy=:year,PhoneNo=:phone,
  ExtraInfo=:exinfo,
  natIDimg=:natIDimg,collegeIDimg=:uniIDimg,PersonalPhoto=:photo 
  WHERE applicantID=:id;
  ");
  
  session_start();
  $stmt->execute(['dob'=>$_POST["dob"], 
  'natID'=>$_POST["nat_id"], 
  'uni'=>$_POST["college"],
  'fac'=>$_POST["faculty"], 
  'year'=>$_POST["year"], 
  'phone'=>$_POST["phone"],
  'exinfo'=>$_POST["exinfotext"], 
  'natIDimg'=>$_POST["natIDimg"], 
  'uniIDimg'=>$_POST["uniIDimg"], 
  'photo'=>$_POST["photo"],
  'id'=>$_SESSION["user_id"]  ]);



  // commit the transaction
  $conn->commit();
  echo "New applicant added successfully";
  header("Location: index.php");
  exit;

} 
catch(PDOException $e) {
  // roll back the transaction if something failed
  $conn->rollback();
  echo "Error: " . $e->getMessage();
}

$conn = null;
?>