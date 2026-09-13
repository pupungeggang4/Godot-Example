extends Node2D

func _ready() -> void:
    load_level("res://data/level%02d.txt" % [GVar.level])

func load_level(file_name: String) -> void:
    var file = FileAccess.open(file_name, FileAccess.READ)
    if not file:
        return
    else:
        var rows: int = 0
        var cols: int = 0
        rows = file.get_line().to_int()
        cols = file.get_line().to_int()
        position = Vector2(400 - cols * 20, 300 - rows * 20)
        for i in range(rows):
            var sliced: PackedStringArray = file.get_line().strip_edges().split(" ")
            for j in range(len(sliced)):
                var node: Node2D = null
                var celli = sliced[j].to_int()
                if celli == 1:
                    node = load("res://entity/wall.tscn").instantiate()
                    node.position = Vector2(40 * j, 40 * i)
                    add_child(node)
                elif celli == 2:
                    node = load("res://entity/player.tscn").instantiate()
                    node.position = Vector2(40 * j, 40 * i)
                    add_child(node)
                elif celli == 3:
                    node = load("res://entity/rock.tscn").instantiate()
                    node.position = Vector2(40 * j, 40 * i)
                    add_child(node)
                elif celli == 4:
                    node = load("res://entity/goal.tscn").instantiate()
                    node.position = Vector2(40 * j, 40 * i)
                    add_child(node)
                $TileMapLayer.set_cell(Vector2i(j, i), 1, Vector2(0, 0))
