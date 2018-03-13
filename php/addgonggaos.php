<?php
	$text=$_POST["text"];
	$time=$_POST["time"];
	
	$con=mysql_connect("localhost","root","");
	if(!$con){
		die('Could not connect:'.mysql_error());
	}

	/*指定连接的具体数据库的名称*/
	mysql_select_db("zengpin", $con);

	mysql_query("set character set 'utf8'");
	mysql_query("set names 'utf8'");
	
	/*插入数据*/
	$sql= "insert into gonggao(text,time) values ('$text','$time')";

	$res=mysql_query($sql);

	if ($res) {
		echo 'OK';
	} else {
		echo 'NO';
	};

	mysql_close($con);


?>