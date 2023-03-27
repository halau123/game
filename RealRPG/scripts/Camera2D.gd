extends Camera2D

@export var tilemap: TileMap

func _ready():
	var mapRect = tilemap.get_used_rect();
	var tileSize = tilemap.cell_quadrant_size;
	print(mapRect.size);
	var worldSizeInPixels = mapRect.size * tileSize;
	limit_right = worldSizeInPixels.x-10;
	limit_bottom = worldSizeInPixels.y;
