extends CharacterBody2D

@export var speed : float = 20 
var direction : Vector2 = Vector2.ZERO  
var animation_player : AnimationPlayer  

var change_direction_timer: float = 0.0
@export var direction_change_interval: float = 3.0  

func _ready():
	animation_player = $AnimationPlayer
	
	_pick_random_direction()

func _physics_process(delta):
	change_direction_timer += delta
	if change_direction_timer >= direction_change_interval:
		_pick_random_direction()
		change_direction_timer = 0.0
	
	velocity = direction * speed

	move_and_slide()
	

	if direction != Vector2.ZERO:
		if direction.x > 0:
			animation_player.play("walkRight")
		elif direction.x < 0:
			animation_player.play("walkLeft")
		elif direction.y > 0:
			animation_player.play("walkDown")
		elif direction.y < 0:
			animation_player.play("walkUp")
	else:
		animation_player.stop()
	
	if is_on_wall():
		_pick_random_direction()
		
	

func _pick_random_direction():
	var directions = [
		Vector2(1, 0),   
		Vector2(-1, 0), 
		Vector2(0, 1),   
		Vector2(0, -1)  
	]
	direction = directions[randi() % directions.size()]
	
