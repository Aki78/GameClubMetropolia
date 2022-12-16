extends Node2D

func _input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		var mouse_pos = get_global_mouse_position()
		$Particles2D.position = mouse_pos
		$Particles2D.restart()
		$Particles2D.emitting = true
