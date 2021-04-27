<?php

    $_SERVER_DB = "localhost";
    $_USERNAME_DB = "root";
    $_PASSWORD_DB = "";
    $_DATABASE_DB = "db_kampus";


    $_AUTH = mysqli_connect($_SERVER_DB, $_USERNAME_DB, $_PASSWORD_DB, $_DATABASE_DB);

    // if($_AUTH){
    //     echo json_encode(array(
    //         "message" => "Congrats your connection successfully",
    //         "code" => 200,
    //         "status" => true)
    //     );
    // }else{
    //     echo json_encode(array(
    //         "message" => "connection failed try again and check the error", 
    //         "code" => 404, 
    //         "status" => false)
    //     );
    // }
?>