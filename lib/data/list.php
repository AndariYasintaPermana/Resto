<?php 

    $connection = new mysqli("localhost","root","","uaspbm");
    $data       = mysqli_query($connection, "select * from rm_app");
    $data       = mysqli_fetch_all($data, MYSQLI_ASSOC);

    echo json_encode($data);