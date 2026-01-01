extends Area2D

func _on_body_entered(body):
	if body.name == "Raquette":
		body._on_ball_hit()
