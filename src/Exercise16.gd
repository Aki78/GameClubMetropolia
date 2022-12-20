extends Control

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Hello")
		else:
			print("World")
	if event is InputEventMouseMotion:
		print(event.speed)


func _on_TextureButton16_mouse_entered():
	pass # Replace with function body.


func _on_TextureButton16_mouse_exited():
	pass # Replace with function body.
