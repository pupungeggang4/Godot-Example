extends Node2D

var selected_character: int = -1

func _ready() -> void:
    for i in range(6):
        var button: Button = Button.new()
        button.size.x = 160
        button.size.y = 160
        button.position.x = 20 + 200 * (i % 3)
        button.position.y = 80 + 200 * (int(i / 3))
        button.button_up.connect(character_select.bind(i))
        $ButtonCharacters.add_child(button)

func _process(delta: float) -> void:
    pass

func _on_button_back_button_up() -> void:
    get_tree().change_scene_to_file("res://scene/title.tscn")
    
func character_select(i: int) -> void:
    selected_character = i
    $TextSelected.text = "Character %d selected." % [selected_character]

func _on_button_start_button_up() -> void:
    if selected_character > -1:
        get_tree().change_scene_to_file("res://scene/battle.tscn")
