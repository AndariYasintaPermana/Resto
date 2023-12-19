<?php 

    $connection = new mysqli("localhost","root","","uaspbm");
    $data       = mysqli_query($connection, "select * from rm_app where id=".$_GET['id']);
    $data       = mysqli_fetch_array($data, MYSQLI_ASSOC);

    echo json_encode($data);