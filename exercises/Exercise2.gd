extends Node2D

var label_a
onready var screen_size_x = float((get_viewport().size)[0])
onready var screen_size_y = float((get_viewport().size)[1])
onready var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _addingLabel():
	rng.randomize()
	var random_x = rng.randf_range(0.0, screen_size_x)
	var random_y = rng.randf_range(0.0, screen_size_y)
	
	label_a = Label.new()
	label_a.text=str(random_x)+", "+ str(random_y)
	label_a.rect_position = Vector2(random_x,random_y)
	add_child(label_a)
		


func _on_Timer_timeout():
		_addingLabel()
