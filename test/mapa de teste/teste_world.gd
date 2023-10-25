extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var player = get_node("Player")
	player.setTrainTrack.connect(setTrainTrack)
	
	var train = get_node("TileMap")
	train.newTrackControlPoint.connect(newTrackControlPoint)


func newTrackControlPoint(p):
	get_node("Train").newTrackControlPoint(p)


func setTrainTrack(p):
	get_node("TileMap").setTrainTrack(p)
