extends TextureButton

var dragging = false
var hovering = false
var is_tweening = false

var closest_point
var move_to

var min_distance = 100

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and hovering:
			print("Hello")
			dragging = true


		else:
			print("World")
			dragging= false
			get_closest()
			if not is_tweening:
				is_tweening = true
				var tween = get_node("Tween")
				tween.interpolate_property(self, "rect_position",
						rect_position, move_to, 0.3,
						Tween.TRANS_BACK, Tween.EASE_IN_OUT)
				tween.start()
				yield(tween, "tween_completed")
				is_tweening = false

func _process(delta):
	if dragging:
		rect_position = get_global_mouse_position() - rect_size/2

func get_closest():
	closest_point = get_node("/root/Exercise16/ColorRects/ColorRect").rect_position
	for _i in get_node("/root/Exercise16/ColorRects").get_children():
		if _i.rect_position.distance_to(rect_position) < closest_point.distance_to(rect_position):
			closest_point = _i.rect_position
	move_to = closest_point
	if  move_to.distance_to(rect_position) > min_distance:
		move_to = rect_position
	
	
func _on_TextureButton16_mouse_entered():
	hovering = true


func _on_TextureButton16_mouse_exited():
	hovering = false
