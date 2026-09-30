extends Node2D

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    pass

func _on_button_back_button_up() -> void:
    get_tree().change_scene_to_file("res://scene/title.tscn")
