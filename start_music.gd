extends AudioStreamPlayer2D

# Variabel untuk melacak apakah `ui_accept` di-disable
var is_ui_accept_disabled = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Jika `ui_tutorial` ditekan, disable `ui_accept`
	if Input.is_action_just_pressed("ui_tutorial"):
		is_ui_accept_disabled = true

	# Jika `ui_cancel` ditekan, enable kembali `ui_accept`
	if Input.is_action_just_pressed("ui_cancel"):
		is_ui_accept_disabled = false

	# Jika `ui_accept` ditekan dan tidak di-disable, hentikan musik
	if Input.is_action_just_pressed("ui_accept") and not is_ui_accept_disabled:
		stop()
