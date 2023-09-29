// enemy moving

y += enemyvsp;


vspd = function(){
	enemyvsp = random_range(-1, 1) *5;
	enemyLife += 2;
}

if (x > 500 ) {
	x-=5;
	vspd();
}

var moves = time_source_create(time_source_game, 2, time_source_units_seconds, vspd, [], -1, time_source_expire_after);

if (moving) {
	time_source_start(moves)

	moving = false
}

y = clamp(y, 135, 255)

if (y == 135 || y == 255) {
	enemyvsp= enemyvsp*-1
}


bullet = function() {
	instance_create_depth(x-5, y, 1, obEnemyBullet);
	if instance_exists(obEnemy2){
		if (obEnemy2.double) {
			instance_create_depth(x-5, y+8, 1, obEnemyBullet);
		}
	}
}


if (instance_exists(obPlayer1)) {
	//if (keyboard_check_released(vk_space))  {
	if (tiro == false) {
		shot = time_source_create(time_source_game, 0.5, time_source_units_seconds, bullet, [], -1, time_source_expire_after);
		time_source_start(shot);
		tiro = true;
	}
}
//}





