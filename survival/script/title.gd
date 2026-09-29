extends Node

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    pass

func _on_button_start_button_up() -> void:
    get_tree().change_scene_to_file("res://scene/ready.tscn")

func _on_button_collection_button_up() -> void:
    get_tree().change_scene_to_file("res://scene/collection.tscn")

func _on_button_quit_button_up() -> void:
    get_tree().quit()
