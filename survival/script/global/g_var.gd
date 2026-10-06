extends Node

enum State {NORMAL, REWARD}

const KEY_MAPPING: Dictionary = {
    'skill_1': 0, 'skill_2': 1, 'skill_3': 2,
    'skill_4': 3, 'skill_5': 4, 'skill_6': 5 
}

const direction: Dictionary = {
    'left': Vector2.LEFT, 'right': Vector2.RIGHT,
    'up': Vector2.UP, 'down': Vector2.DOWN
}

var state: int = State.NORMAL
var menu: bool = false
