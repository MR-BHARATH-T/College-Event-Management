<?php
// Include database connection

$servername = "localhost"; // Change to your server name
$username = "root"; // Change to your database username
$password = ""; // Change to your database password
$dbname = "cwms_db"; // Change to your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

 // Make sure this file contains your database connection setup

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Directory where files will be uploaded
    $uploadDir = 'report/';
    
    // File details
    $fileName = basename($_FILES['invite']['name']);
    $targetFilePath = $uploadDir . $fileName;
    $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

    // Allow certain file formats
    $allowedTypes = array('pdf', 'doc', 'docx', 'jpg', 'jpeg');
    if (in_array($fileType, $allowedTypes)) {
        // Move the file to the target directory
        if (move_uploaded_file($_FILES['invite']['tmp_name'], $targetFilePath)) {
            // Prepare an SQL query to insert the file path into the database
            $stmt = $conn->prepare("INSERT INTO report (invite) VALUES (?)");
            $stmt->bind_param("s", $targetFilePath);
            
            // Execute the query
            if ($stmt->execute()) {
                echo "The file ". htmlspecialchars($fileName). " has been uploaded successfully.";
            } else {
                echo "Error: " . $stmt->error;
            }
            
            // Close the statement
            $stmt->close();
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    } else {
        echo "Sorry, only PDF, DOC, DOCX, JPG, JPEG files are allowed.";
    }

    // Close the database connection
    $conn->close();
}
?>
