extends CharacterBody2D



var is_paused = false

@export var speed = 200
@onready var animations = $AnimationPlayer

func handleInput():
	var MoveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = MoveDirection * speed
	
func updateAnimation():
	if velocity.length() == 0:
		animations.stop()
	else:
		var direction = "Down"
		if velocity.x < 0: direction = "Left"
		elif velocity.x > 0: direction = "Right"
		elif velocity.y < 0: direction = "Up"
	
		animations.play("walk" + direction)

func _physics_process(_delta):
	handleInput()
	move_and_slide()
	updateAnimation()


func restart_scene():
	get_tree().reload_current_scene()
