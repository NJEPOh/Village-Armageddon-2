extends AudioStreamPlayer2D

# Variabel untuk melacak apakah kontrol arah di-disable
var is_direction_control_disabled = true

# Dipanggil ketika node masuk ke scene tree untuk pertama kali
func _ready() -> void:
	stop()  # Pastikan musik berhenti saat memulai

# Dipanggil setiap frame
func _process(delta: float) -> void:
	# Jika `ui_accept` ditekan, aktifkan kontrol arah
	if Input.is_action_just_pressed("ui_accept"):
		is_direction_control_disabled = false

	# Periksa apakah kontrol arah dapat dijalankan
	if not is_direction_control_disabled:
		# Memulai musik jika tombol arah ditekan
		if Input.is_action_pressed("ui_up") or \
		   Input.is_action_pressed("ui_down") or \
		   Input.is_action_pressed("ui_right") or \
		   Input.is_action_pressed("ui_left"):
			if not playing:  # Mulai memutar musik jika belum berjalan
				play()

		# Menghentikan musik jika tombol arah dilepaskan
		if Input.is_action_just_released("ui_up") or \
		   Input.is_action_just_released("ui_down") or \
		   Input.is_action_just_released("ui_right") or \
		   Input.is_action_just_released("ui_left"):
			if playing:  # Hentikan musik jika sedang berjalan
				stop()
