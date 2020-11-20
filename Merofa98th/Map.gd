extends Node

var enemy_1 = preload("res://Enemy.tscn")

func _ready():
	var soundnode = get_node("SoundNode/AudioStreamPlayer2D")
	print(soundnode.playing)
	
		
func _process(delta):
	var soundnode = get_node("SoundNode/AudioStreamPlayer2D")
	if soundnode.playing == false:
		soundnode.playing = true
		

func _on_Timer_timeout():
	var rand = RandomNumberGenerator.new()
	var screen_size = get_viewport().get_visible_rect().size
	#var sprite_size = get_node("Sprite").texture.get_size()
	#print(sprite_size)
	
	if Global.points%10 == 0 and Global.points > 0:
		Global.difficulty = Global.difficulty + 1
	
	for _i in range(0, Global.difficulty):
		var enemy = enemy_1.instance()
		rand.randomize()
		var x = rand.randf_range(-50, screen_size.x + 50)
		rand.randomize()
		var y = rand.randf_range(-50, screen_size.y + 50)
		while (x < screen_size.x and x > 0) and (y < screen_size.y and y > 0):
			rand.randomize()
			x = rand.randf_range(-50, screen_size.x + 50)
			rand.randomize()
			y = rand.randf_range(-50, screen_size.y + 50)
		
		enemy.position.x = x
		enemy.position.y = y
		add_child(enemy)
