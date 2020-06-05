<?php 
	include_once dirname(__FILE__) . "/../database.php";

	$id = $_GET['id'];
	$sql = "DELETE FROM cart WHERE id_cart IN ($id)";
	$result = mysqli_query($conn_vn, $sql);
?>