extends Node2D


@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_2d_right: RayCast2D = $RayCast2DRight
@onready var ray_cast_2d_2_left: RayCast2D = $RayCast2D2Left


const Speed = 50
var direction = 1

func _process(delta: float) -> void:
	position.x += Speed * direction * delta
	if ray_cast_2d_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	elif  ray_cast_2d_2_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
