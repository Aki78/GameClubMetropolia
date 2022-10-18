extends Node2D

onready var my_rect = $ColorRect
onready var my_rect2 = $ColorRect2

func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		my_rect.rect_position.y -= 300*delta
	if Input.is_action_pressed("ui_down"):
		my_rect.rect_position.y += 300*delta
	if Input.is_action_pressed("up_left_up"):
		my_rect2.rect_position.y -= 300*delta
	if Input.is_action_pressed("up_left_down"):
		my_rect2.rect_position.y += 300*delta
