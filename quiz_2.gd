extends Panel

var buttons = ["ui_1", "ui_2", "ui_3", "ui_4"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for button in buttons:
		if Input.is_action_just_pressed(button):
			queue_free()
			break
		
	if Input.is_action_just_pressed("ui_up") or Input.is_action_just_pressed("ui_down") or Input.is_action_just_pressed("ui_right") or Input.is_action_just_pressed("ui_left"):
		hide()
	if Input.is_action_just_pressed("ui_f"):
		show()
	pass
