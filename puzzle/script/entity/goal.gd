extends Entity
class_name Goal
            
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass
    
func check_goal(entity_list: Array) -> void:
    $GoalOff.hide()
    $GoalOn.hide()
    for entity in entity_list:
        if entity is Rock:
            if entity.cell_pos == cell_pos:
                $GoalOn.show()
                return
    $GoalOff.show()
