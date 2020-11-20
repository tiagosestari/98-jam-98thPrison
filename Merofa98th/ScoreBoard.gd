extends Sprite

func _ready():
	Global.scoreBoard = self
	
	
func _process(delta):
	var scoreText = Global.scoreBoard.get_node("checkmark/Control/score")
	scoreText.text = String(Global.points) + " Bugs Corrected"
	
