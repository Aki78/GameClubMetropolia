extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button1_pressed():
	$Label.text = "button1"


func _on_Button2_pressed():
	$Label.text = "button2"


func _on_Button3_pressed():
	$Label.text = "button3"


func _on_Button4_pressed():
	$Label.text = "button4"
