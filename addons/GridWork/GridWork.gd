extends Node


@export var origin: Vector2
@export var grid_size: Vector2i = Vector2i(1, 1)
@export var cell_size: Vector2 = Vector2(32, 32)

var grid: Dictionary


func _ready() -> void:
	create_grid()


func create_grid() -> void:
	for x in range(1, grid_size.x + 1):
		for y in range(1, grid_size.y + 1):
			var cell_name: String = str(x) + ":" + str(y)
			var cell_pos: Vector2 = origin + (Vector2(x, y) * cell_size) - (cell_size / 2)
			grid[cell_name] = cell_pos

