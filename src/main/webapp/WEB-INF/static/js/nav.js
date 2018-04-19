$(function() {
	ini()
})
/*${userId!=null}*/
function ini() {
	if(false) {
		$(".nav_menu.login_menu").css("display", "none");
		$(".nav_menu.user_menu").css("display", "block");
	} else {
		$(".nav_menu.user_menu").css("display", "none");
		$(".nav_menu.login_menu").css("display", "block");
	}
}