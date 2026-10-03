extends Control

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    pass
    
func _on_button_quit_button_up() -> void:
    get_tree().quit()

func _on_button_resume_button_up() -> void:
    GVar.menu = false
    hide()

func _on_button_restart_button_up() -> void:
    GVar.menu = false
    get_tree().current_scene.get_node('Level').load_level("res://data/level%02d.txt" % [GVar.level])
    hide()

func _on_button_title_button_up() -> void:
    GVar.menu = false
    get_tree().change_scene_to_file("res://scene/title.tscn")
    hide()
