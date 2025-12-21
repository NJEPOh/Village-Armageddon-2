extends Node



@export var hp = 1

var has_run1 = false
var has_run2 = false
var has_run3 = false
var has_run4 = false
var has_run5 = false
var has_run6 = false
var has_run7 = false



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_restart"):  # Mengecek apakah input ui_restart ditekan
		restart_scene()
	
	if hp == 0:
		get_tree().reload_current_scene()
		

		
	
	
	
# Fungsi untuk mereload atau restart scene
func restart_scene():
	get_tree().reload_current_scene()



func _saat_masuk(body: Node2D) -> void:
	print("ada yang nabrak : " + body.name)
	if (body.name == "CharacterBody2D"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D2"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D3"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D4"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D5"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D6"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D7"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D8"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D9"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D10"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D11"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D12"):
		hp = hp-1
		print(hp)
		print("nabrak")
	if (body.name == "CharacterBody2D13"):
		hp = hp-1
		print(hp)
		print("nabrak")

		
	if (body.name == "Lock 1" and not has_run1):
		print("Masuk ke quiz 1")
		$"Tutorial/Quiz 1".show()
		$"Tutorial/Quiz 1".set_process(true)
		$"Tutorial/Quiz 1".set_process_input(true)
		$"Lock/Lock 1".set_process(true)
		$"Lock/Lock 1".set_process_input(true)
		$"Lock/Lock 1/F".set_process(true)
		$"Lock/Lock 1/F".set_process_input(true)
		$Sound/Quiz.play()
		has_run1 = true  # Menandakan bahwa kode sudah dijalankan

	if (body.name == "Lock 2" and not has_run2):
		print("Masuk ke quiz 2")
		$"Tutorial/Quiz 2".show()
		$"Tutorial/Quiz 2".set_process(true)
		$"Tutorial/Quiz 2".set_process_input(true)
		$"Lock/Lock 2".set_process(true)
		$"Lock/Lock 2".set_process_input(true)
		$"Lock/Lock 2/F2".set_process(true)
		$"Lock/Lock 2/F2".set_process_input(true)
		$Sound/Quiz.play()
		has_run2 = true  # Menandakan bahwa kode sudah dijalankan

	if (body.name == "Lock 3" and not has_run3):
		print("Masuk ke quiz 3")
		$"Tutorial/Quiz 3".show()
		$"Tutorial/Quiz 3".set_process(true)
		$"Tutorial/Quiz 3".set_process_input(true)
		$"Lock/Lock 3".set_process(true)
		$"Lock/Lock 3".set_process_input(true)
		$"Lock/Lock 3/F3".set_process(true)
		$"Lock/Lock 3/F3".set_process_input(true)
		$Sound/Quiz.play()
		has_run3 = true  # Menandakan bahwa kode sudah dijalankan

	if (body.name == "Lock 4" and not has_run4):
		print("Masuk ke quiz 4")
		$"Tutorial/Quiz 4".show()
		$"Tutorial/Quiz 4".set_process(true)
		$"Tutorial/Quiz 4".set_process_input(true)
		$"Lock/Lock 4".set_process(true)
		$"Lock/Lock 4".set_process_input(true)
		$"Lock/Lock 4/F4".set_process(true)
		$"Lock/Lock 4/F4".set_process_input(true)
		$Sound/Quiz.play()
		has_run4 = true  # Menandakan bahwa kode sudah dijalankan

	if (body.name == "Lock 5" and not has_run5):
		print("Masuk ke quiz 5")
		$"Tutorial/Quiz 5".show()
		$"Tutorial/Quiz 5".set_process(true)
		$"Tutorial/Quiz 5".set_process_input(true)
		$"Lock/Lock 5".set_process(true)
		$"Lock/Lock 5".set_process_input(true)
		$"Lock/Lock 5/F5".set_process(true)
		$"Lock/Lock 5/F5".set_process_input(true)
		$Sound/Quiz.play()
		has_run5 = true  # Menandakan bahwa kode sudah dijalankan

	if (body.name == "Lock 6" and not has_run6):
		print("Masuk ke quiz 6")
		$"Tutorial/Quiz 6".show()
		$"Tutorial/Quiz 6".set_process(true)
		$"Tutorial/Quiz 6".set_process_input(true)
		$"Lock/Lock 6".set_process(true)
		$"Lock/Lock 6".set_process_input(true)
		$"Lock/Lock 6/F6".set_process(true)
		$"Lock/Lock 6/F6".set_process_input(true)
		$Sound/Quiz.play()
		has_run6 = true  # Menandakan bahwa kode sudah dijalankan

	if (body.name == "Lock 7" and not has_run7):
		print("Masuk ke quiz 7")
		$"Tutorial/Quiz 7".show()
		$"Tutorial/Quiz 7".set_process(true)
		$"Tutorial/Quiz 7".set_process_input(true)
		$"Lock/Lock 7".set_process(true)
		$"Lock/Lock 7".set_process_input(true)
		$"Lock/Lock 7/F7".set_process(true)
		$"Lock/Lock 7/F7".set_process_input(true)
		$Sound/Quiz.play()
		has_run7 = true  # Menandakan bahwa kode sudah dijalankan

	
	if (body.name == "Finish"):
		$"Finish/Finish Word".show()
		$Start/Player.set_process_input(false)
		$Start/Player.set_process(false)
		
		$Sound/Finish.play()
		$Sound/Game.stop()
		$Sound/Walking.set_process_input(false)
		$Finish/CollisionShape2D.queue_free()
		$Welcome.hide()
		$Start/Player.hide()
		
		
		# Membuat Timer secara dinamis
		 # Buat Timer secara dinamis
		var timer = Timer.new()
		timer.wait_time = 18  # Set waktu delay ke 30 detik
		timer.one_shot = true  # Timer hanya berjalan sekali
		add_child(timer)  # Tambahkan Timer ke dalam scene
		timer.start()  # Mulai Timer

		# Tunggu sampai sinyal timeout dari Timer terpanggil
		await timer.timeout

		# Restart game setelah delay
		get_tree().reload_current_scene()
		
		print("sampai finish")
	
	pass # Replace with function body.
