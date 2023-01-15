extends Camera2D

export var zoom_min: = Vector2(0.2, 0.2)
export var zoom_max: = Vector2(2.0, 2.0)
export var zoom_speed: = Vector2(0.2, 0.2)
export var lerp_speed: = 0.2

var des_zoom: = zoom

var flag = false
var mousepos
var mouseposOld = Vector2(0,0)

func _process(delta: float) -> void:
	zoom = lerp(zoom, des_zoom, lerp_speed)
	if flag == true:
		mousepos = get_viewport().get_mouse_position()
		position += 50*delta*(-mousepos + mouseposOld)
		mouseposOld = mousepos
		
		
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_WHEEL_UP:
			change_des_zoom(-1)
		elif event.button_index == BUTTON_WHEEL_DOWN:
			change_des_zoom(1)
		if event.pressed and event.button_index == BUTTON_LEFT:
			flag = true
		else:
			flag = false


func change_des_zoom(dir: int) -> void:
	des_zoom.x = clamp(des_zoom.x + (zoom_speed.x * dir), zoom_min.x, zoom_max.x)
	des_zoom.y = clamp(des_zoom.y + (zoom_speed.y * dir), zoom_min.y, zoom_max.y)
	
