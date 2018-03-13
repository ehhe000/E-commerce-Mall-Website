<?php
	$userid=$_POST["userid"];
	$username=$_POST["username"];
	
	$conn=mysql_connect("localhost:3306","root","");
	if(!$conn){
		die("error:".mysql_error());
	}
	mysql_select_db("zengpin",$conn);
	mysql_query("set names 'utf8'");
	mysql_query("set character set 'utf8'");

	
	$sql="select userid,username from users where userid=$userid or username like ' % ".$username." % '";
	$result=mysql_query($sql,$conn);
	$arr=array();
	while($row=mysql_fetch_array($result,MYSQL_ASSOC)){
		$arr[]=$row;
	}
	
	if(!is_null($arr)){
		echo '{"status":1}';
	}else{
		echo '{"status":0}';
	}
?>