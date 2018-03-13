<?php
	$username=$_POST["username"];
	$password=$_POST["password"];


	$con=mysql_connect("localhost","root","");
	
	if(!$con){
		die('Could not connect:'.mysql_error());
	}

	/*指定连接的具体数据库的名称*/
	mysql_select_db("zengpin", $con);

	mysql_query("set character set 'utf8'");
	mysql_query("set names 'utf8'");

	$sql="select managerid from manager where mname='$username' and mpassword='$password'";
	
	$res=mysql_query($sql);
	$arr=array();
	$id=null;
	while($row=mysql_fetch_array($res,MYSQL_ASSOC)){
		$id=$row['managerid'];		
	}
	if(!is_null($id)){
		echo '{"status":1}';
	}else{
		echo '{"status":0}';
	}

	mysql_close($con);


?>