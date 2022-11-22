extends ColorRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var enemy_scene = load("res://Enemies.tscn")
onready var label_scene = Label.new()
# onr

# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(label_scene)
	label_scene.text = "stexte"
	for i in range(5):
		add_child(label_scene)
		var enemy = enemy_scene.instance()
		enemy.position.x += i*10
		add_child(enemy)
