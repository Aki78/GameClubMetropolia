extends Node2D

onready var screen_size_x = get_viewport().size[0]
var speed 
var component = 1
#onready var screen_size_x = OS.window_size.x
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	speed = 800*delta*component
	$Logo.position.x += speed
	
	if $Logo.position.x >= (get_viewport().size[0]-16):
		component = -1 		
	elif $Logo.position.x <=16:
		component = 1
