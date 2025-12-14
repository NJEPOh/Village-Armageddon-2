extends CanvasLayer


func _ready():
	# Sembunyikan CanvasLayer saat game dimulai
	$Tutorial.hide()
	
	$"Quiz 1".hide()
	$"Quiz 1".set_process(false)
	$"Quiz 1".set_process_input(false)
	
	$"Quiz 2".hide()
	$"Quiz 2".set_process(false)
	$"Quiz 2".set_process_input(false)

	$"Quiz 3".hide()
	$"Quiz 3".set_process(false)
	$"Quiz 3".set_process_input(false)
	
	$"Quiz 4".hide()
	$"Quiz 4".set_process(false)
	$"Quiz 4".set_process_input(false)

	$"Quiz 5".hide()
	$"Quiz 5".set_process(false)
	$"Quiz 5".set_process_input(false)

	$"Quiz 6".hide()
	$"Quiz 6".set_process(false)
	$"Quiz 6".set_process_input(false)

	$"Quiz 7".hide()
	$"Quiz 7".set_process(false)
	$"Quiz 7".set_process_input(false)
	
func _process(delta):
	# Jika "ui_tutorial" ditekan, munculkan CanvasLayer
	if Input.is_action_just_pressed("ui_tutorial"):
		$Tutorial.show()
	# Jika "ui_cancel" (ESC) ditekan, sembunyikan CanvasLayer
	elif Input.is_action_just_pressed("ui_cancel"):
		$Tutorial.hide()
