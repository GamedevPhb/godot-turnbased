extends Node

var tile_prefab = preload("res://prefabs/tile.tscn")

@export var rows: int
@export var columns: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#var origin = Vector3(0, 0, 0)
	var offset = 0.5
	for j in rows:
		for i in columns:
			var tile = tile_prefab.instantiate()
			add_child(tile)
			tile.global_position.x = i * (1 + offset) as float
			tile.global_position.z = j * (1 + offset) as float
			#print(i)
			#print(tile.global_position.x)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
