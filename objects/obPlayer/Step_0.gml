// moving

moveh = -keyboard_check(vk_left) + keyboard_check(vk_right);
movev = -keyboard_check(vk_up) + keyboard_check(vk_down);

hsp=moveh*spd
vsp=movev*spd

//room restart
if keyboard_check(vk_backspace){
	room_restart();
}

// game exit
if keyboard_check(vk_escape){
	game_end();
}


//collision 
if !place_meeting(x+hsp,y,obEnvirorment){

	x+=hsp
}
else{
		while !place_meeting(x+sign(hsp),y,obEnvirorment)
	{
		x+=sign(hsp)
	}
}

if !place_meeting(x,y+vsp,obEnvirorment){

	y+=vsp
	
}
else{
		while !place_meeting(x,y+sign(vsp),obEnvirorment)
	{
		y+=sign(vsp)
	}
}



//depth sort
 depth =-y*2;



