<?php
	$proid = $_REQUEST['proid'];
	$proname = $_REQUEST['proname'];
	$newprice = $_REQUEST['newprice'];
	$oldprice = $_REQUEST['oldprice'];
	$proimg = $_REQUEST['proimg'];
	$prodiscount = $_REQUEST['prodiscount'];
	$proamount = $_REQUEST['proamount'];
	
	$conn=mysql_connect("localhost:3306","root","");
	if(!$conn){
		die("error:".mysql_error());
	}
	mysql_select_db("zengpin",$conn);
	mysql_query("set names 'utf8'");
	mysql_query("set character set 'utf8'");
	
	$sql="update products set proid=$proid,proname='$proname',newprice=$newprice,oldprice=$oldprice,proimg='$proimg',prodiscount='$prodiscount',proamount='$proamount' where proid='$proid'";
	@mysql_query($sql);
	echo json_encode(array(
		'id' => mysql_insert_id(),
		'proid' => $proid,
		'proname' => $proname,
		'newprice' => $newprice,
		'oldprice' => $oldprice,
		'proimg' => $proimg,
		'prodiscount' => $prodiscount,
		'proamount' => $proamount,
	));
	
?>