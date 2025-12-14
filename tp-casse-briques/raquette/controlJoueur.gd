extends Node2D

@export var vitesse: float = 500
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#pass # Replace with function body.
	screen_size = get_viewport().get_visible_rect().size


## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass

func _physics_process(delta):
	var direction = 0
	
	if Input.is_action_pressed("p1_left"):
		direction -= 1
	if Input.is_action_pressed("p1_right"):
		direction += 1
		
	position.x += direction * vitesse * delta
	
	position.x = clamp(position.x, -500, screen_size.x - 600)
