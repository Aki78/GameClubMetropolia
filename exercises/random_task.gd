extends Node2D
var i = 0
var enemy
onready var enemy_scene = load("res://random_task1.tscn")
onready var label_scene = Label.new()

func _ready():
	$Button1.text = "button 1"
	$Button2.text = "button 2"
	pass # Replace with function body.

func _on_Button1_pressed():
	enemy = enemy_scene.instance()
	add_child(enemy)
	enemy.position.x += i*10
	i += 1

func _on_Button2_pressed():
	print(get_children())
	get_children()[get_child_count()-1].queue_free()
	i -= 1

