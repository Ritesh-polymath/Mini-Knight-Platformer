extends Area2D
@onready var animation_player: AnimationPlayer = %AnimationPlayer
var is_at_top : bool = false

func _on_body_entered(_body: Node2D):
	if is_at_top == false:
		animation_player.play("Down")
		is_at_top = true
	elif is_at_top == true:
		animation_player.play_backwards("Down")
		is_at_top = false
