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
        $w_name =  $_REQUEST['w_name'];
        $w_age =  $_REQUEST['w_age'];
        $w_dob =  $_REQUEST['w_dob'];
        $w_mob_no = $_REQUEST['w_mob_no'];
        $w_gender =  $_REQUEST['w_gender'];
        $w_aadhar_no =  $_REQUEST['w_aadhar_no'];
        $w_state =  $_REQUEST['w_state'];
        $w_address =  $_REQUEST['w_address'];
        $w_iname =  $_REQUEST['w_iname'];
        $w_iid =  $_REQUEST['w_iid'];
        $w_work =  $_REQUEST['w_work'];

                
         
         
        // Performing insert query execution
        // here our table name is college
        $sql = "INSERT INTO w_register_details (w_name,w_age,w_dob,w_mob_no,w_gender,w_aadhar_no,w_state,w_address,w_iname,w_iid,w_work) VALUES ('$w_name','$w_age','$w_dob','$w_mob_no','$w_gender','$w_aadhar_no','$w_state','$w_address','$w_iname','$w_iid','$w_work')";
         
        if(mysqli_query($conn, $sql)){
           
            echo "<script>
                        
                        window.location.href = 'home.php';
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