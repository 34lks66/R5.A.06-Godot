extends Area2D

func _on_body_entered(body):
	if body.is_in_group("ball"):
		get_parent().get_node("AudioStreamPlayer").play()
