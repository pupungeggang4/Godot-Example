extends Node2D

func _ready() -> void:
    pass # Replace with function body.

func _process(delta: float) -> void:
    pass

func _on_button_menu_button_up() -> void:
    if GVar.menu == false:
        GVar.menu = true
    else:
        GVar.menu = false
