extends Node2D

var can_tp = true
var tp_rate = 10.0

onready var Player = $Player
onready var TP_Point = load("res://src/Travel Point.tscn")

func _process(delta):
	if Input.is_action_pressed("ui_accept") and can_tp == true:
		var spawn_tp = TP_Point.instance()
		add_child(spawn_tp)
		spawn_tp.position = Player.position
		can_tp = false
		yield(get_tree().create_timer(tp_rate), "timeout")
		can_tp = true
		Player.position = spawn_tp.position
		spawn_tp.queue_free()
	
	if Input.is_action_just_pressed("timer_add"):
		tp_rate += 1.0
		tp_rate = min(tp_rate, 10.0)
		print(tp_rate)
	
	if Input.is_action_just_pressed("timer_subtract"):
		tp_rate += -1.0
		tp_rate = max(tp_rate, 1.0)
		print(tp_rate)
	
	

