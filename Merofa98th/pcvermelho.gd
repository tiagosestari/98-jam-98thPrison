extends AnimatedSprite

func _on_AnimatedSprite_animation_finished():
	if Global.pcHurt.animation != "idle":
		Global.pcHurt.play("idle")
