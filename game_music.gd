extends AudioStreamPlayer2D

# Variabel untuk melacak apakah ui_accept sedang dinonaktifkan
var is_ui_accept_disabled = false

# Dipanggil ketika node masuk ke scene tree untuk pertama kali
func _ready() -> void:
	stop()  # Pastikan musik berhenti saat memulai

# Dipanggil setiap frame
func _process(delta: float) -> void:
	# Jika `ui_tutorial` ditekan, disable `ui_accept`
	if Input.is_action_just_pressed("ui_tutorial"):
		is_ui_accept_disabled = true
	
	# Jika `ui_cancel` ditekan, enable kembali `ui_accept`
	if Input.is_action_just_pressed("ui_cancel"):
		is_ui_accept_disabled = false

	# Jika `ui_accept` ditekan dan tidak di-disable, mulai memutar musik
	if Input.is_action_just_pressed("ui_accept") and not is_ui_accept_disabled:
		if not playing:  # Hanya mulai memutar jika musik tidak sedang berjalan
			play()
