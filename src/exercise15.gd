extends ColorRect

# A list to store the lines that are drawn
var lines = []

# A Vector2 to store the current mouse position
var mouse_pos

# A boolean to track whether the mouse button is being held down
var drawing = false

func _input(event):
	# Check if the event is a mouse button press or release
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			if event.pressed:
				# Left mouse button press: start drawing
				drawing = true
				mouse_pos = event.position
			else:
				# Left mouse button release: stop drawing
				drawing = false

func _process(delta):
	var current_pos = get_global_mouse_position()
	if drawing:
		# If the mouse button is being held down, get the current mouse position
		# and draw a line from the previous position to the current position

		$ButtonExercise15/exercise15.draw_line(mouse_pos, current_pos, Color.black)

		# Add the line to the list of lines
		lines.append()

		# Update the previous mouse position
		mouse_pos = current_pos
