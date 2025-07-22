extends Node2D

@onready var icon: Sprite2D = $Icon
@onready var icon_2: Sprite2D = $Icon2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# $Icon.position.x = $Icon.position.x + 50.0 * delta #this moves us 50.0 pixels per second(delta).
	icon.position.x += 50.0 * delta  # Shortcut for line above. Notice we created a new variable for our icon on line 3
	icon_2.rotation_degrees += 180.0 * delta
