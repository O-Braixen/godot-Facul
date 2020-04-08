extends Node2D

onready var pipe = preload("res://scenes/Pipe.tscn")
var start_position_x = 200

func _ready():
	randomize()


func _on_Timer_timeout():
	create_pipe()
	
func create_pipe():
	var Clone_pipe = pipe.instance()
	Clone_pipe.position = Vector2(start_position_x,rand_range(-40,320))
	add_child(Clone_pipe)
