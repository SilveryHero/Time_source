//player 1 shooting
playerShot = function () {
	if (bullet == false) {
		bullet = true;	
	}
}

shotting = time_source_create(time_source_game, 1, time_source_units_seconds, playerShot, [], 1, time_source_expire_after);

if (keyboard_check_pressed(vk_alt) && bullet == true) {
instance_create_depth(x+20, y, -1000, obPlayerBullet);
bullet = false;
time_source_start(shotting);
}



// moving

moveh = -keyboard_check(vk_left) + keyboard_check(vk_right);
movev = -keyboard_check(vk_up) + keyboard_check(vk_down);

hsp = moveh*spd
vsp = movev*spd

x = clamp(x, 10, 280);
x += hsp;
y = clamp(y, 120, 340); 
y += vsp;

if (moveh != 0 || movev != 0) {
	sprite_index = spPlayerRight;
} else {
	sprite_index = spPlayerIdle;
}

//room restart
if keyboard_check(vk_backspace){
	room_restart();
}

// game exit
if keyboard_check(vk_escape){
	game_end();
}

if (ending) {
	spd = 0;
}
