#Bullet Script
extends Area2D

const SHOT_SPEED = 200


func _ready():
	set_process(true)
	
func _process(delta):
	var speed_x = 1
	var speed_y = 0
	var motion = Vector2(speed_x, speed_y).rotated(rotation) * SHOT_SPEED
	#set_pos and get_pos can be written as follows
	position = (position + motion * delta)
	


func _on_VisibilityNotifier2D_screen_exited():
	print("shot destroyed")
	queue_free()


func _on_Shot_area_entered(area):
	#var deadText = load("res://assets/Ícones 98/Quando bicho morre (2).png")
	#area.get_node("Sprite").set_texture(deadText)
	#area.get_node("CollisionShape2D").disabled=true
	
	#yield(get_tree().create_timer(1), "timeout")
	Global.points = Global.points + 1
	area.queue_free()
	queue_free()
	
	
	


