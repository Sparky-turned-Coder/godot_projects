extends Area2D

const SPEED: float = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if Input.is_action_pressed("move_left") == true: # == true: is not necessary here
		#position.x -= SPEED * delta
	#if Input.is_action_pressed("move_right") == true: 
		#position.x += SPEED * delta
		
	# More efficient method for left and right inputs 
	var movement: float = Input.get_axis("move_left", "move_right")
	position.x += SPEED * delta * movement
		
	position.x = clampf(position.x, get_viewport_rect().position.x, get_viewport_rect().end.x)
	#var window_size = get_viewport_rect().size
	#var sprite_size = Vector2(70, 108)
	
	#global_position.x = clampf(global_position.x, 75, window_size.x - sprite_size.x)  # I overthought this big time
		
