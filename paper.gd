extends AudioStreamPlayer2D

# Variabel untuk melacak status tombol
var is_ui_disabled = false
var ui_next_count = 0
var ui_close_used = false
var is_ui_f_disabled = false  # Menandakan apakah tombol ui_f dinonaktifkan
var is_ui_close_pressed = false  # Menandakan apakah ui_close sudah ditekan

# Dipanggil ketika node masuk ke scene tree untuk pertama kali
func _ready() -> void:
	stop()  # Pastikan suara berhenti saat memulai

# Dipanggil setiap frame
func _process(delta: float) -> void:
	# Jika `ui_close` sudah ditekan, hentikan semua aksi
	if is_ui_close_pressed:
		return  # Menghentikan eksekusi fungsi _process

	# Aktifkan atau nonaktifkan tombol berdasarkan `ui_tutorial` dan `ui_cancel`
	if Input.is_action_just_pressed("ui_tutorial"):
		is_ui_disabled = true
	if Input.is_action_just_pressed("ui_cancel"):
		is_ui_disabled = false

	# Jika tombol tidak dinonaktifkan, periksa aksi
	if not is_ui_disabled:
		# `ui_next` hanya bisa dipakai 3 kali
		if Input.is_action_just_pressed("ui_next") and ui_next_count < 3:
			play()
			ui_next_count += 1
		
		# `ui_close` hanya bisa dipakai 1 kali
		if Input.is_action_just_pressed("ui_close") and not ui_close_used:
			play()
			ui_close_used = true
			is_ui_close_pressed = true  # Tandai bahwa ui_close sudah ditekan
