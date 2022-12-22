extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_mouse_entered():
	var x=$TextureButton.rect_position.x+32
	var y=$TextureButton.rect_position.y+32
	$Camera2D.position = Vector2(x,y)
func _on_TextureButton2_mouse_entered():
	var x=$TextureButton2.rect_position.x+32
	var y=$TextureButton2.rect_position.y+32
	$Camera2D.position = Vector2(x,y)
func _on_TextureButton3_mouse_entered():
	var x=$TextureButton3.rect_position.x+32
	var y=$TextureButton3.rect_position.y+32
	$Camera2D.position = Vector2(x,y)
func _on_TextureButton4_mouse_entered():
	var x=$TextureButton4.rect_position.x+32
	var y=$TextureButton4.rect_position.y+32
	$Camera2D.position = Vector2(x,y)
func _on_TextureButton5_mouse_entered():
	var x=$TextureButton5.rect_position.x+32
	var y=$TextureButton5.rect_position.y+32
	$Camera2D.position = Vector2(x,y)
