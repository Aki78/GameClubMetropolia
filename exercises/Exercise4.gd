extends Node2D
var inp1
var inp2

func _physics_process(delta):
	inp1 = Input.get_action_strength("ui2_down") - Input.get_action_strength("ui2_up")
	inp2 = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	$ColorRect.rect_position.y += 800*delta*inp1
	$ColorRect2.rect_position.y += 800*delta*inp2
	
	print(inp1)
	print(inp2)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
