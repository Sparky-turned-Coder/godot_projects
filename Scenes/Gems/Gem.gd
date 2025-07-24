extends Area2D

class_name Gem

signal gem_off_screen


const SPEED: float = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# DisplayServer.window_set_position(Vector2(300, 300))  # Attempted to have project window open in different monitor
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
# Gems falls down the screen
	position.y += SPEED * delta
	
	if position.y > get_viewport_rect().end.y:  # This grabs the bottom of the viewport instead of creating a magic number
		emit_signal("gem_off_screen") # Or: gem_off_screen.emit()
		print("Gem falls off.")
		die()

func die() -> void:   # Later, if you want to make a fancy animation when you die, it would go here, in your DIE function
	set_process(false)  # Here we stop the process after each gem falls off the screen.
	queue_free()  # Look deeper into what this means. With this, the gems will actually dissapear from the game.

func _on_area_entered(area: Area2D) -> void:  
	print("Gem hits paddle.")
	die()
