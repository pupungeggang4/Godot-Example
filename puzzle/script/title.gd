extends Node2D

var selected_level: int = 1
@onready var label_level_num: Label = $TextLevelNum

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    label_level_num.text = "%d" % [selected_level]

func _on_button_down_button_up() -> void:
    selected_level = max(selected_level - 1, 1)

func _on_button_up_button_up() -> void:
    selected_level = min(selected_level + 1, 10)

func _on_start_button_up() -> void:
    get_tree().change_scene_to_file("res://scene/puzzle.tscn")

func _on_quit_button_up() -> void:
    get_tree().quit()
