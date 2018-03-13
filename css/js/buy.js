/*送货到*/
$(".areaSell")[0].onclick=function(e){
	e=e||event;
	var src=e.target;
	if(src.nodeName.toUpperCase()==="A"){
		var _area=src.innerHTML;
		$(".area1",$(".arealeft")[0])[0].innerHTML=_area;	
	}
}	
		
