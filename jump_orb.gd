extends Area2D

# Adjust this value to set how high the player is launched
@export var jump_force: float = -600.0

func _on_body_entered(body: Node2D) -> void:
	# Replace "Player" with whatever your player node's group or name is
	if body.is_in_group("player") and body.has_method("orb_jump"):
		body.orb_jump(jump_force)
