extends RigidBody2D

@export var vitesse_initiale: float = 300.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	linear_velocity = Vector2(0, vitesse_initiale)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta):
	linear_velocity = linear_velocity.normalized() * vitesse_initiale
