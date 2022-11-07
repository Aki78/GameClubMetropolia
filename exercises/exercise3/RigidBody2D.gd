extends RigidBody2D

func _ready():
	apply_impulse(Vector2(0,0), Vector2(100, 0))

