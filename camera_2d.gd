extends Camera2D

var dragging := false
var last_mouse_pos := Vector2.ZERO

@export var zoom_speed: float = 0.1
@export var min_zoom: float = 0.5
@export var max_zoom: float = 2.5

func _ready() -> void:
	pass

func _input(event: InputEvent) -> void:
	# DRAG CAMERA
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				dragging = true
				last_mouse_pos = event.position
			else:
				dragging = false

		# ZOOM CAMERA (SCROLL)
		if event.pressed:
			if event.button_index == MOUSE_BUTTON_WHEEL_UP:
				_zoom(zoom_speed)      # zoom in
			elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
				_zoom(-zoom_speed)     # zoom out

	elif event is InputEventMouseMotion and dragging:
		var mouse_delta: Vector2 = last_mouse_pos - event.position
		position += mouse_delta * zoom.x
		last_mouse_pos = event.position

func _zoom(amount: float) -> void:
	var new_zoom := zoom + Vector2(amount, amount)
	new_zoom.x = clamp(new_zoom.x, min_zoom, max_zoom)
	new_zoom.y = clamp(new_zoom.y, min_zoom, max_zoom)
	zoom = new_zoom
