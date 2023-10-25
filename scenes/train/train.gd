extends StaticBody2D

var SPEED = 75
var direction : Vector2 = Vector2.ZERO
var velocity : Vector2 = Vector2.ZERO

var controlPoints : Array = [Vector2.ZERO]

func _process(delta):
	var targetPosition
	
	if controlPoints.size() == 0:
		print("fudeo")
		return
	
	targetPosition = controlPoints[0]
	
	velocity = position.move_toward(targetPosition,SPEED * delta)
	
	position = velocity
	if position == targetPosition:
		controlPoints.pop_front()


func newTrackControlPoint(p):
	controlPoints.append(p)
