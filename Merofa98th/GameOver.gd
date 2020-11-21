extends Sprite

func _ready():
	Global.health = 0
	Global.difficulty = 5
	if Global.points > 200:
		self.get_node("ScoreBoard/RichTextLabel").visible = true
	else:
		self.get_node("ScoreBoard/RichTextLabel").visible = false		

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		Global.points = 0
		var main = get_parent()
		
		if Global.cameFrom == 1:
			var map_resource = load("res://Map.tscn")
			var map = map_resource.instance()
			main.add_child(map)
		elif Global.cameFrom == 0:
			var gameStart = load("res://fightback.tscn")
			var fightback = gameStart.instance()
			main.add_child(fightback)
			
		var go = main.get_node("GameOver")
		main.remove_child(go)
