extends Button

# A reference to the CanvasLayer node
var canvas

func _ready():
	# Get a reference to the CanvasLayer node
	canvas = get_node("CanvasLayer")

func _on_Button_pressed():
	# Clear the list of lines
	canvas.lines = []

	# Clear the canvas
	canvas.clear()
