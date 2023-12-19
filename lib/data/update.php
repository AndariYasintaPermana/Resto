<?php

    $connection = new mysqli("localhost", "root", "", "uaspbm");
    $Alamat       = $_POST['Alamat'];
    $id         = $_POST['id'];
        
    $result = mysqli_query($connection, "update rm_app set  Alamat='$Alamat' where id='$id'");
        
    if($result){
        echo json_encode([
            'message' => 'Data edit successfully'
        ]);
    }else{
        echo json_encode([
            'message' => 'Data Failed to update'
        ]);
    }

