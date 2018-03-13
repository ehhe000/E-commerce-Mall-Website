<?php
	$username=$_POST["username"];
	$com=$_POST["com"];
	$data=$_POST["data"];
	
	$con=mysql_connect("localhost","root","");
	if(!$con){
		die('Could not connect:'.mysql_error());
	}

	/*指定连接的具体数据库的名称*/
	mysql_select_db("zengpin", $con);

	mysql_query("set character set 'utf8'");
	mysql_query("set names 'utf8'");
	
	/*插入数据*/
	$sql= "insert into pingluns(username,comment,time) values ('$username','$com','$data')";

	$res=mysql_query($sql);

	if ($res) {
		echo 'OK';
	} else {
		echo 'NO';
	};

	mysql_close($con);


?>