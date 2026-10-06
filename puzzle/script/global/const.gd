extends Node

enum State {NORMAL, CLEAR}
const direction: Dictionary = {
    'left': Vector2i(-1, 0), 'right': Vector2i(1, 0),
    'up': Vector2i(0, -1), 'down': Vector2i(0, 1)
}
