<?php
	$username=$_POST["username"];
	$shouhuoren=$_POST["shouhuoren"];
	$shouhuodizhi=$_POST["shouhuodizhi"];
	$dianhua=$_POST["dianhua"];
	$shouhuotime=$_POST["shouhuotime"];
	$proname=$_POST["proname"];
	$proamount=$_POST["proamount"];
	$heji=$_POST["heji"];
	
	
//	echo $username+""+$shouhuoren+""+$shouhuodizhi+""+$dianhua+""+$shouhuotime.$proname;
	$con=mysql_connect("localhost","root","");
	if(!$con){
		die('Could not connect:'.mysql_error());
	}

	/*指定连接的具体数据库的名称*/
	mysql_select_db("zengpin", $con);

	mysql_query("set character set 'utf8'");
	mysql_query("set names 'utf8'");
	
	/*插入数据*/
	$sql= "insert into dingdan(username,proname,proamount,heji,shouhuoren,shouhuodizhi,dianhua,shouhuotime) values ('$username','$proname',$proamount ,$heji, '$shouhuoren' , '$shouhuodizhi', $dianhua, '$shouhuotime')" ;                                  

	$res=mysql_query($sql);

	if ($res) {
		echo 'OK';
	} else {
		echo 'NO';
	};

	mysql_close($con);


?>