/*送货到*/
$(".areaSell")[0].onclick=function(e){
	e=e||event;
	var src=e.target;
	if(src.nodeName.toUpperCase()==="A"){
		var _area=src.innerHTML;
		$(".area1",$(".arealeft")[0])[0].innerHTML=_area;	
	}
}
/*bnner轮播特效*/
var imgs=$("img",$(".zbanner")[0]),
 		len=imgs.length,
 		currentIndex=0,
 		nextIndex=1,
 		circle=[];
 	// console.log(imgs);

for(var i=0;i<len;i++){
	var p=document.createElement("p");
	$("#c",$(".zbanner")[0]).appendChild(p);
	circle[i]=p;
	circle[0].className="c";
	p.index=i;
}

$("#c",$(".zbanner")[0]).onmouseover=function(e){
	e=e||event;
	var src=e.target;
	if(src.nodeName.toUpperCase()=="P"){
		if(src.index!==currentIndex){
			nextIndex=src.index;
			
			move();
		}
	}
}


var timer=setInterval(move,10000);
function move(){
	fadeOut(imgs[currentIndex],1000);
	fadeIn(imgs[nextIndex],1000);
	
	circle[currentIndex].className="";
	circle[nextIndex].className="c";
 	currentIndex=nextIndex;
 	nextIndex++;
 	if(nextIndex>=len){
 		nextIndex=0;
 	}	
 }