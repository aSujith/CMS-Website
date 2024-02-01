<?php
$conn = mysqli_connect("localhost", "root", "", "migrant_website");

// Check connection
if ($conn === false) {
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Taking username and password from the form data(input)
$username = $_REQUEST['username'];
$password = $_REQUEST['password'];

// Performing select query execution
$sql = "SELECT * FROM login_details WHERE username='$username' AND password='$password'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // Successful login
    echo "<script>
                
                window.location.href = 'home.php';
                </script>";
} else {
    // Invalid login
    echo "<script>
                alert('Invalid login! Not having account!!! Try to signin.');
                window.location.href = 'register.html'; // Redirect to index page or any other appropriate page
                </script>";
}

// Close connection
mysqli_close($conn);
?>
