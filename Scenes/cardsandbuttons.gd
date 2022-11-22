extends Node2D
onready var card_1 = load("res://Card1.tscn")
onready var label_scene = Label.new()
var card
# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(label_scene)
	label_scene.text = "Some label"
		
func _on_Button1_pressed():
	card = card_1.instance()
	add_child(card)


func _on_Button2_pressed():
	card.queue_free()
