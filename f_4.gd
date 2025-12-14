extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process(false)
	set_process_input(false)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_1") or Input.is_action_just_pressed("ui_3") or Input.is_action_just_pressed("ui_2"):
		hide()
	pass
