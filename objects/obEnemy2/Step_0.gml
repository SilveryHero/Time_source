
 if (instance_exists(obEnemy)) {
	 _follow1 = obEnemy
 }
if (follow) {
			
		image_xscale = 1;		
		distance = point_distance(x, y, _follow1.x, _follow1.y);
		maxStep = distance/50;
		move_towards_point(_follow1.x,_follow1.y,maxStep);


}
else {
		x += maxStep*4;
		image_xscale = -1;
}

if (x >= 640){
	instance_destroy();
}







