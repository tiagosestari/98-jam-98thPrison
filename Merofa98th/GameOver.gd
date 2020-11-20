extends Sprite


func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		Global.points = 0
		var main = get_parent()
		
		var map_resource = load("res://Map.tscn")
		var map = map_resource.instance()
		main.add_child(map)
		
		var go = main.get_node("GameOver")
		main.remove_child(go)
