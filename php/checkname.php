<?php
	$username=$_POST["username"];
	
	$con=mysql_connect("localhost","root","");
	if(!$con){
		die('Could not connect:'.mysql_error());
	}

	/*指定连接的具体数据库的名称*/
	mysql_select_db("zengpin", $con);

	mysql_query("set character set 'utf8'");
	mysql_query("set names 'utf8'");
	
	/*插入数据*/
	$sql= "select username from users where username='$username'";	
	$res=mysql_query($sql);
	$name=null;
	while($row=mysql_fetch_array($res,MYSQL_ASSOC)){
		$name=$row['username'];		
	}
	if(!is_null($name)){
		echo '{"status":1}';
	}else{
		echo '{"status":0}';
	}
	mysql_close($con);


?>