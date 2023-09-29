// player 2 following

if keyboard_check_released(vk_control){
	 follow = !follow
 }
 
 
 
if follow = true {
			
				
		var _distance = point_distance(x, y, _follow1.x, _follow1.y);
		
		if (_distance <=15){
			
			speed =0;
		}
		else{
			var _max_step = _distance/30;
			move_towards_point(_follow1.x,_follow1.y,_max_step);
		}
		

}
else {
	sprite_index = spPlayer2idle
}
	
	
if keyboard_check(vk_anykey){
	sprite_index = spPlayer2run

}
else {
	sprite_index=spPlayer2run
}

 
 if keyboard_check(vk_right){
	image_xscale= 1
}

if keyboard_check(vk_left){
	image_xscale=-1
}






