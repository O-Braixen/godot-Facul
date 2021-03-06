extends Node2D

var speed = 250
var game

func _ready():
	game = get_tree().current_scene


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var pos_x = position.x
	pos_x -= speed * delta
	position.x = pos_x
#	pass


func _on_area_body_entered(body):
	print(body.name)
	if body.name == "Player":
		body.queue_free()
		get_tree().change_scene("res://scenes/dead.tscn")


func _on_area_score_body_entered(body):
	print("score - " + body.name)
	if body.name == "Player":
		game.count_score()
