extends Sprite



func _on_Button_pressed():
	
	var main = get_parent()
	
	var Dialog_resource = load("res://Dialog.tscn")
	var Dialog = Dialog_resource.instance()
	main.add_child(Dialog)
	
	var fb = main.get_node("fightback")
	main.remove_child(fb)


func _on_Button2_pressed():
	var main = get_parent()
	
	var abertura_resource = load("res://Abertura.tscn")
	var aberturaTimer_resource = load("res://aberturaTimer.tscn")
	var abertura = abertura_resource.instance()
	var aberturaTimer = aberturaTimer_resource.instance()
	main.add_child(abertura)
	main.add_child(aberturaTimer)
	
	var fb = main.get_node("fightback")
	main.remove_child(fb)


func _on_Button3_pressed():
	var main = get_parent()
	Global.cameFrom = 0
	var go_resource = load("res://GameOver.tscn")
	var go = go_resource.instance()
	main.add_child(go)
	
	var fb = main.get_node("fightback")
	main.remove_child(fb)
