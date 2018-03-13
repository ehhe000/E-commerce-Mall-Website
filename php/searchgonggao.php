<?php
	$con=mysql_connect("localhost","root","");
	
	if(!$con){
		die('Could not connect:'.mysql_error());
	}

	/*指定连接的具体数据库的名称*/
	mysql_select_db("zengpin", $con);

	mysql_query("set character set 'utf8'");
	mysql_query("set names 'utf8'");

	$sql= "select * from gonggao";
	$res=mysql_query($sql);
	$arr=array();	
	while($row=mysql_fetch_array($res)){
		$arr[]=$row;
	}
	
	echo json_encode($arr);
	mysql_close($con);


?>