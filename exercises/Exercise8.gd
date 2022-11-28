extends Node2D

var inp3
var inp4
var inp_pause
var score3 = 0
var score4 = 0
onready var ball_position

func _physics_process(delta):
	inp3 = Input.get_action_strength("ui2_down") - Input.get_action_strength("ui2_up")
	inp4 = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	inp_pause = Input.get_action_strength("ui_home")
	$Box3/CollisionShape2D.position.y += 1400*delta*inp3
	$Box4/CollisionShape2D.position.y += 1400*delta*inp4
	ball_position = $Ball.position.x
	if $Ball.position.x < 5:
		$AudioStreamPlayer.play_beep()
		score4 = score4+1
	if $Ball.position.x > 1019:
		$AudioStreamPlayer.play_beep()
		score3 =score3+1
	$ScoreLabel3.text=str(score3)
	$ScoreLabel4.text=str(score4)
	
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().change_scene("res://Exercise9.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
		pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AudioStreamPlayer_ready():
	pass # Replace with function body.
