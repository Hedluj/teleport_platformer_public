extends StaticBody2D

signal button_down
signal button_up

func _on_Green_Button_Area_body_entered(body):
	emit_signal("button_down")
	print("button is down")
	$Sprite.frame = 3

func _on_Green_Button_Area_body_exited(body):
	emit_signal("button_up")
	print("button is up")
	$Sprite.frame = 2
