extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _on_Button5_pressed():
	get_parent().get_node("Label1").text = "Button 5"
func _on_Button6_pressed():
	get_parent().get_node("Label1").text = "Button 6"
func _on_Button7_pressed():
	get_parent().get_node("Label1").text = "Button 7"
func _on_Button8_pressed():
	get_parent().get_node("Label1").text = "Button 8"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
