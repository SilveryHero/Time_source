if (!instance_exists(obEnemy)) {
	instance_create_depth(x, random_range(130, 330), -1000, obEnemy);
}

if (obEnemy.enemyLife == 6 && !instance_exists(obEnemy2)) {
	instance_create_depth(x, random_range(130, 330), -1000, obEnemy2)
}











