<?php
	//$id = intval($_REQUEST['id']);
	$proid=intval($_POST['proid']);

	$conn=mysql_connect("localhost:3306","root","");
	if(!$conn){
		die("error:".mysql_error());
	}
	mysql_select_db("zengpin",$conn);
	mysql_query("set names 'utf8'");
	mysql_query("set character set 'utf8'");

	$sql = "delete from products where proid='$proid'";
	@mysql_query($sql);
	echo json_encode(array('success'=>true));
?>