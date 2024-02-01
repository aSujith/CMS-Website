<!DOCTYPE html>
<html>
 
<head>
    <title>Insert Page page</title>
</head>
 
<body>
   
        <?php
        $conn = mysqli_connect("localhost", "root", "", "migrant_website");
         
        // Check connection
        if($conn === false){
            die("ERROR: Could not connect. "
                . mysqli_connect_error());
        }
         
        // Taking all 5 values from the form data(input)
        $name =  $_REQUEST['name'];
        $email =  $_REQUEST['email'];
        $mob_no = $_REQUEST['mob_no'];
        $username = $_REQUEST['username'];
        $password =  $_REQUEST['password'];
        
         
         
        // Performing insert query execution
        // here our table name is college
        $sql = "INSERT INTO login_details (name,email,mob_no,username,password) VALUES ('$name','$email','$mob_no','$username','$password')";
         
        if(mysqli_query($conn, $sql)){
           
            echo "<script>
                        
                        window.location.href = 'index.html';
                        </script>";
                
        } else{
            echo "ERROR: Hush! Sorry $sql. "
                . mysqli_error($conn);
        }
         
        // Close connection
        mysqli_close($conn);
        ?>
   
</body>
 
</html>