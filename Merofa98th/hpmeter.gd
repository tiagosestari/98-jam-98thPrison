extends Sprite


func _ready():
	Global.pcHurt = self.get_node("pcvermelho")

func _process(delta):
	var healthbar = self.get_node("Control/TextureProgress")
	healthbar.value = Global.health
