extends Node2D

var in_chest = false



func _on_body_entered(body):
	in_chest = true
	
func _on_body_exited(body):
	in_chest = false # Replace with function body.

func _process(delta):
	if in_chest==true:
		if Input.is_action_just_pressed("ui_accept"):
			print("chest opened")
			$AnimatedSprite2D.play("open")
