extends Node



func _on_Timer_timeout():
	var main = get_parent()
	var abertura = main.get_node("Abertura")
	var relogio = main.get_node("aberturaTimer")
	
	var gameStart = load("res://fightback.tscn")
	var fightback = gameStart.instance()
	main.add_child(fightback)
	
	
	main.remove_child(abertura)
	main.remove_child(relogio)
	
	
