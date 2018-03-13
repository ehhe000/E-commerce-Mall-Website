<?php
	$username=$_POST["username"];
	$comment=$_POST["comment"];
	
	$conn=mysql_connect("localhost:3306","root","");
	if(!$conn){
		die("error:".mysql_error());
	}
	mysql_select_db("zengpin",$conn);
	mysql_query("set names 'utf8'");
	mysql_query("set character set 'utf8'");

	
	$sql="select username,comment from pingluns where username='$username' or comment like ' % ".$comment." % '";
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