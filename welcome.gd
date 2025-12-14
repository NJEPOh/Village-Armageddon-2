extends CanvasLayer

var current_step = 1
var is_locked = false  # Variabel untuk melacak apakah input sedang terkunci
var is_executable = true  # Variabel untuk melacak apakah kode dapat dieksekusi

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"Welcome 1".hide()
	$"Welcome 2".hide()
	$"Welcome 3".hide()
	pass  # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Jika kode tidak dapat dieksekusi (setelah ui_close)
	if not is_executable:
		return  # Menghentikan eksekusi kode lebih lanjut

	# Periksa apakah input terkunci
	if is_locked:
		return  # Jika terkunci, tidak memproses input lainnya

	if Input.is_action_just_pressed("ui_accept"):
		$"Welcome 1".show()
		
	if Input.is_action_just_pressed("ui_next"):
		if current_step == 1:
			$"Welcome 1".hide()
			$"Welcome 2".show()
			current_step += 1  # Pindah ke langkah berikutnya
		elif current_step == 2:
			$"Welcome 2".hide()
			$"Welcome 3".show()
			current_step += 1
		elif current_step == 3:
			$"Welcome 3".hide()
			
	if Input.is_action_just_pressed("ui_close"):
		$"Welcome 1".hide()
		$"Welcome 2".hide()
		$"Welcome 3".hide()
		is_executable = false  # Menonaktifkan eksekusi kode lebih lanjut

	pass

# Logika untuk mengunci dan membuka kunci input
func _input(event):
	if event.is_action_pressed("ui_tutorial"):
		is_locked = true  # Kunci input lainnya

	if event.is_action_pressed("ui_cancel"):
		is_locked = false  # Buka kunci input lainnya
