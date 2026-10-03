extends Control

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    pass

func _on_button_resume_button_up() -> void:
    GVar.menu = false
    hide()
    
func _on_button_exit_button_up() -> void:
    GVar.menu = false
    hide()
    get_tree().change_scene_to_file("res://scene/title.tscn")

func _on_button_quit_button_up() -> void:
    get_tree().quit()
