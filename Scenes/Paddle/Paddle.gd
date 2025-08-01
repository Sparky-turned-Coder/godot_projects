extends Area2D

class_name Paddle

const SPEED: float = 600.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if Input.is_action_pressed("move_left") == true: # == true: is not necessary here
		#position.x -= SPEED * delta
	#if Input.is_action_pressed("move_right") == true: 
		#position.x += SPEED * delta
		
	# More efficient method for left and right inputs 
	var movement: float = Input.get_axis("move_left", "move_right")
	position.x += SPEED * delta * movement
		
	position.x = clampf(position.x, Game._vp_r.position.x, Game._vp_r.end.x)
	
func _on_area_entered(area: Area2D) -> void:
	print("_on_area_entered from Paddle Definition.")
