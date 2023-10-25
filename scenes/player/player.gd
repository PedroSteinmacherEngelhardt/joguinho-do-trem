extends CharacterBody2D


const maxSPEED = 600.0
const acceleration = 75.0

signal setTrainTrack



func _physics_process(delta):
	var direction : Vector2 = Vector2(Input.get_axis("left", "right"),Input.get_axis("up", "down")).normalized()
	
	velocity = velocity.move_toward(direction * maxSPEED,acceleration)
	
	if Input.is_action_just_pressed("ui_accept"):
		emit_signal("setTrainTrack",position)
	
	move_and_slide()
