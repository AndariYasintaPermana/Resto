<?php

    $connection = new mysqli("localhost", "root", "", "uaspbm");
    $Alamat       = $_POST['Alamat'];
    
    $result = mysqli_query($connection, "insert into rm_app set  Alamat='$Alamat'");
    
    if($result){
        echo json_encode([
            'message' => 'Data input successfully'
        ]);
    }else{
        echo json_encode([
            'message' => 'Data Failed to input'
        ]);
    }