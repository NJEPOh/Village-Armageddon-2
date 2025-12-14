extends Area2D

func _process(delta):
	# Pastikan memanggil fungsi dari Area2D
	var overlapping_bodies = $Area2D.get_overlapping_bodies()
	
