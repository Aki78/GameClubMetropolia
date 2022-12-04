extends Sprite
var old_mouse_position
onready var moving = 0
var mouse_position
func _ready():
	old_mouse_position = position
	
	

func move():
	if moving == 0:
		moving = 1
		mouse_position = get_viewport().get_mouse_position()
		var tween = $Tween
		tween.interpolate_property(self, "position",
				old_mouse_position, mouse_position, 1,
				Tween.TRANS_BACK, Tween.EASE_OUT)
		tween.start()
	old_mouse_position = mouse_position


func _on_Tween_tween_all_completed():
	moving = 0
