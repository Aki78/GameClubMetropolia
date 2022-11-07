extends Node2D

func _on_Button1_pressed():
	$Label.text = "button1"

func _on_Button2_pressed():
	$Label.text = "button2"

func _on_Button3_pressed():
	$Label.text = "button3"

func _on_Button4_pressed():
	$Label.text = "button4"
func _ready():
	
	for i in get_children():
#		var dynamicfont = load("res://new_font.tres")
		var mytheme = load("res://new_theme.tres")
		i.theme = mytheme
#		i.add_font_override("font", dynamicfont)
