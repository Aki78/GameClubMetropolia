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


func _on_Button_1_pressed():
	$Label.text = "Button 1"

func _on_Button_2_pressed():
	$Label.text = "Button 2"

func _on_Button_3_pressed():
	$Label.text = "Button 3"

func _on_Button_4_pressed():
	$Label.text = "Button 4"


func _on_Button_pressed():
	$Label.text = "Button 5"
