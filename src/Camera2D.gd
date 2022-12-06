extends Camera2D

onready var center = OS.get_window_size()/2
onready var mouse_down = false

var mouse_position_before

func _ready():
	offset.y = center[1]
	offset.x = center[0]
	for _i in $Node2D.get_children():
		_i.connect("mouse_entered", self, "_Mouse_Entered", [_i])
	


func _Mouse_Entered(node):
	var tween = $Tween
	tween.interpolate_property(self, "offset",
			offset, node.rect_position, 0.5,
			Tween.TRANS_BACK, Tween.EASE_OUT)
	tween.start()

func _input(e):
	if Input.is_action_pressed("zoomin") and zoom.x > 0.5:
		zoom *= 0.9
	if Input.is_action_pressed("zoomout") and zoom.x < 2:
		zoom *= 1.1
	if Input.is_action_pressed("mouse_left"):
		mouse_down = true
	else:
		mouse_down = false

func _process(delta):
	var mouse_position_now = get_global_mouse_position()
	if mouse_down:
		offset += 50*delta*(-mouse_position_now + mouse_position_before)
	mouse_position_before = mouse_position_now
