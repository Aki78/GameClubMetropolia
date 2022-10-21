extends Sprite

func _ready():
	pass

func _process(delta):
	set_rotation(get_rotation() + delta)
#	position.x += 1
