extends Area2D

@export var target_level: PackedScene
@onready var sprite = $AnimatedSprite2D

func _ready():
	sprite.play("default")

func _on_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene_to_packed(target_level)
