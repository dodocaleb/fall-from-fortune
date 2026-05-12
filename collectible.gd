extends Area2D

@onready var game_manager = %GameManager
@onready var sprite = $AnimatedSprite2D

func _ready():
	sprite.play("default")
	
func _on_body_entered(body):
	print(body)
	if body.is_in_group("player"):
		game_manager.add_point()
		queue_free()
