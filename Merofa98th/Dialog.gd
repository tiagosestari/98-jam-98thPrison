extends Node


func _on_Dialog_finished():
	var main = get_parent()
	
	var map_resource = load("res://Map.tscn")
	var map = map_resource.instance()
	main.add_child(map)
	
	var d = main.get_node("Dialog")
	main.remove_child(d)
	
	var sound = get_node("AudioStreamPlayer")
	sound.stop()
	
	
