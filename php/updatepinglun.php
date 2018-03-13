
<?php
	$plid = $_REQUEST['plid'];
	$username = $_REQUEST['username'];
	$comment = $_REQUEST['comment'];
	$time = $_REQUEST['time'];
	
	$conn=mysql_connect("localhost:3306","root","");
	if(!$conn){
		die("error:".mysql_error());
	}
	mysql_select_db("zengpin",$conn);
	mysql_query("set names 'utf8'");
	mysql_query("set character set 'utf8'");
	
	$sql="update pingluns set plid=$plid,username='$username',comment='$comment',time='$time'  where plid=$plid ";
	@mysql_query($sql);
	echo json_encode(array(
		'id' => mysql_insert_id(),
		'plid' => $plid,
		'username' => $username,
		'comment' => $comment,
		'time' => $time,
		
	));
	
?>