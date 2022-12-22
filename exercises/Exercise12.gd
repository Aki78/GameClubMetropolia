extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var tweenNode = get_node("Icon/Tween")
var distance = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func icon_Tween():
	distance = ($Icon.position.distance_to(get_global_mouse_position()))/50
	tweenNode.interpolate_property($Icon,"position",$Icon.position,get_global_mouse_position(), 1*distance*0.0167, tweenNode.TRANS_LINEAR)
	tweenNode.start()	

func _on_Button_pressed():
	$Button.disabled = true
	icon_Tween()
	yield(tweenNode,"tween_completed")
	$Button.disabled = false
	print(distance)
	print("pressed")
	print($Icon.position)
	print(get_global_mouse_position())
	
