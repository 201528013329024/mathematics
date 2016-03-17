
$(function(){
	$('#mobanwang_com li').hover(function(){
		$(this).children('ul').stop(true,true).show('slow');
	},function(){
		$(this).children('ul').stop(true,true).hide('slow');
	});
	
	$('#mobanwang_com li').hover(function(){
		$(this).children('div').stop(true,true).show('slow');
	},function(){
		$(this).children('div').stop(true,true).hide('slow');
	});
});


	
	function clockon(bgclock)
	{
	  	var today = new Date();
	  	var year = today.getYear();
	  	var month = today.getMonth(); 
	  	var day = today.getDate();
      		var hour = today.getHours();
      		var mintue = today.getMinutes();
     		var second = today.getSeconds();
		var w = today.getDay();
		var week;
		month = month+1;
		if(month<10) month = "0"+month;
		if(day<10) day = "0"+day;
		if(hour<10) hour = "0"+hour;
		if(mintue <10) mintue  = "0"+mintue ;
		if(second <10) second = "0"+second ;
		var arr_week = new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
		week = arr_week[w];
		var time = "";
		
		time ='<right>' +year+"年"+month+"月"+day +"日"+'&nbsp;'+week+'&nbsp;'+hour+":"+mintue +":"+second+'</right>';
		if(document.all)
		{bgclock.innerHTML=""+time+"";}
		var timer = setTimeout("clockon(bgclock)",200);
	}





