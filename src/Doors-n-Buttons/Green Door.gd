extends StaticBody2D

func _ready() -> void:
	Green_Button.connect("button_down", self, "_on_button_down")
	Green_Button.connect("button_up", self, "_on_button_up")

func _on_button_down():
	$CollisionPolygon2D.set_disabled(true)
	print("unlocked")

func _on_button_up():
	$CollisionPolygon2D.set_disabled(false)
	print("locked")
