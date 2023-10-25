extends TileMap

signal newTrackControlPoint

func _process(delta):
	pass


func setTrainTrack(p : Vector2):
	var tile = local_to_map(p)
	var currentTile = get_cell_source_id(0,tile)
	if currentTile == 2:
		set_cell(0, tile, 1, Vector2.ZERO, 0)
	else:
		set_cell(0, tile, 2, Vector2.ZERO, 0)
	
	emit_signal("newTrackControlPoint",p)
