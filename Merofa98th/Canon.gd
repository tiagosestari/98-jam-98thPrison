extends Sprite

const SHOT_SCENE = preload("Shot.tscn")
const ROTATION_SPEED = 1.5
var HP = 2


func _ready():
	Global.player = self
	set_process(true)
	
func _exit_tree():
	Global.player = null

func _process(delta):
	#Rotate
	if Input.is_action_pressed("ui_left"):
		rotation = rotation - ROTATION_SPEED * delta
	if Input.is_action_pressed("ui_right"):
		rotation = rotation + ROTATION_SPEED * delta
		
	#Shot
	if Input.is_action_just_pressed("ui_accept"):
		var shot_right = SHOT_SCENE.instance()
		var shot_front = SHOT_SCENE.instance()
		var shot_left = SHOT_SCENE.instance()
		var shot_back = SHOT_SCENE.instance()
		
		shot_left.position = get_node("LeftCanon").global_position
		shot_left.rotation = rotation + PI
		shot_front.position = get_node("FrontCanon").global_position
		shot_front.rotation = rotation - PI/2
		shot_right.position = get_node("RightCanon").global_position
		shot_right.rotation = rotation
		shot_back.position = get_node("BackCanon").global_position
		shot_back.rotation = rotation + PI/2
		
		get_parent().add_child(shot_right)
		get_parent().add_child(shot_front)
		get_parent().add_child(shot_left)
		get_parent().add_child(shot_back)




func _on_Area2D_area_entered(area):
	area.queue_free()
	if HP > 1:
		HP = HP -1
		print("HP: " + str(HP))
	else:
		print("Game over")
		queue_free()
