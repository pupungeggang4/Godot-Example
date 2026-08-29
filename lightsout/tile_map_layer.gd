extends TileMapLayer

@export var label: Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    randomize()
    for i in range(8):
        var row: int = randi_range(0, 6)
        var col: int = randi_range(0, 6)
        flip(row, col)
        count()
    
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    if Input.is_action_just_released("mouse"):
        var mouse_pos: Vector2 = get_viewport().get_mouse_position()
        var pos: Vector2i = local_to_map(mouse_pos - position)
        flip(pos.y, pos.x)
        count()

func flip(row: int, col: int) -> void:
    if row >= 0 and row < 7 and col >= 0 and col < 7:
        var neighbor: Array = [[-1, 0], [0, -1], [0, 0], [0, 1], [1, 0]]
        for i in range(5):
            var crow: int = row + neighbor[i][0]
            var ccol: int = col + neighbor[i][1]
            if crow >= 0 and crow < 7 and ccol >= 0 and ccol < 7:
                set_cell(Vector2i(ccol, crow), 1 - get_cell_source_id(Vector2i(ccol, crow)), Vector2i(0, 0))

func count() -> void:
    var count: int = 0
    for i in range(7):
        for j in range(7):
            if get_cell_source_id(Vector2i(i, j)) > 0:
                count += 1
    label.text = "%d" % [count]
            
