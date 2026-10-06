extends Node2D

@export var speed: float = 240.0
var direction: Vector2 = Vector2.ZERO

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    if GVar.state == GVar.State.NORMAL:
        move(delta)
        handle_input()

func move(delta: float) -> void:
    direction = Vector2.ZERO 
    for d in GVar.direction:
        if Input.is_action_pressed(d):
            direction += GVar.direction[d]
    direction = direction.normalized()
    position += direction * speed * delta

func handle_input() -> void:
    pass
