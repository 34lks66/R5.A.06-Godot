extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body):
	if body.is_in_group("ball"):
		var bricks = get_tree().get_nodes_in_group("brick")
		var sound = get_parent().get_node("AudioStreamPlayer")
		sound.play()
		await get_tree().create_timer(0.05).timeout
		get_parent().queue_free()
		
		if bricks.size() <= 1:
			get_tree().change_scene_to_file("res://victoire.tscn")
	
