$(function(){
	var menuBtn = $("ul > li");
    menuBtn.find("a").click(function(){
		menuBtn.removeClass("active");
    	$(this).addClass("active");
    })
});