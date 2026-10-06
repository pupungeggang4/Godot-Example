extends Entity
class_name Player

var destination: Vector2 = Vector2.ZERO
var is_moving: bool = false

var moved_distance: float = 0
var speed: float = 320

func _process(delta: float) -> void:
    slide(delta)
    handle_input()
    
func handle_input() -> void:
    if is_moving:
        return
        
    for d in Const.direction:
        if Input.is_action_just_pressed(d):
            var direction: Vector2i = Const.direction[d]
            var displacement: Vector2 = Vector2(direction.x, direction.y) * 40
            destination = position + displacement
            moved_distance = 0
            is_moving = true
            break
            
func slide(delta: float) -> void:
    if is_moving:
        var direction: Vector2 = (destination - position).normalized()
        moved_distance += speed * delta
        position += direction * speed * delta
        if moved_distance > 40:
            is_moving = false
            position = destination
