extends Node2D  

var can_toggle = true  # Menyimpan status apakah aksi 'ui_accept' dapat dilakukan
var is_tutorial_active = false  # Status apakah tutorial sedang aktif
var is_game_active = true  # Status untuk menonaktifkan seluruh input setelah ui_accept ditekan

func _ready():
	$Player.hide()
	$Player.set_physics_process(false)
	$HomeScreen.show()

func _process(delta):
	# Jika aksi sudah tidak aktif, hentikan eksekusi kode lebih lanjut
	if not is_game_active:
		return
	
	# Toggle antara Player dan HomeScreen dengan tombol 'ui_accept', kecuali jika tutorial aktif
	if can_toggle and Input.is_action_just_pressed("ui_accept") and not is_tutorial_active:
		if $Player.is_visible():
			$Player.hide()
			$Player.set_physics_process(false)
			$HomeScreen.show()
		else:
			$Player.show()
			$Player.set_physics_process(true)
			$HomeScreen.hide()
		
		# Setelah aksi pertama dilakukan, nonaktifkan toggle
		can_toggle = false  # Nonaktifkan toggle agar tidak bisa dijalankan lagi

	# Hide HomeScreen dengan tombol 'ui_tutorial', menonaktifkan ui_accept
	if Input.is_action_just_pressed("ui_tutorial") and not is_tutorial_active:
		$HomeScreen.hide()
		is_tutorial_active = true  # Set tutorial aktif, menonaktifkan ui_accept

	# Show HomeScreen kembali dengan tombol 'ui_cancel' (ESC), mengaktifkan ui_accept kembali
	if Input.is_action_just_pressed("ui_cancel") and is_tutorial_active:
		$HomeScreen.show()
		is_tutorial_active = false  # Reset tutorial, mengaktifkan ui_accept kembali

	# Nonaktifkan seluruh logika setelah tombol ui_accept ditekan untuk dialog
	if Input.is_action_just_pressed("ui_accept") and not is_tutorial_active:
		#nanti fix welcome ada di sini
		is_game_active = false  # Menonaktifkan semua input setelah dialog ditampilkan
	
