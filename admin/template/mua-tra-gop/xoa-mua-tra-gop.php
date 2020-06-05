<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM mua_tra_gop WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=mua-tra-gop');
?>