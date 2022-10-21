extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _on_Button_pressed():
	get_parent().get_node("Label").text = "Button 3"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
