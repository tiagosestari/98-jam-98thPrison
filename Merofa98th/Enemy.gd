extends Area2D

var speed = 100
var movement = Vector2()
var rand = RandomNumberGenerator.new()
var rand_direction = RandomNumberGenerator.new()
var setFollow = 0;



func _process(delta):
	rand.randomize()
	setFollow = rand.randf_range(0,10)
	if Global.player != null:
		if setFollow > 6:
			rand_direction.randomize()
			var x_random_dir = rand_direction.randf_range(-5,5)
			rand_direction.randomize()
			var y_random_dir = rand_direction.randf_range(-5,5)
			movement = Vector2(x_random_dir,y_random_dir)
		else:
			movement = global_position.direction_to(Global.player.global_position)
		
		global_position += movement*speed*delta


	

	
	



