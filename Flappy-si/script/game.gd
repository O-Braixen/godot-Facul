extends Node2D

var score = 0

func _ready():
	$music_start.play();
	$CanvasLayer/Label.text = str(score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		get_tree().change_scene("res://scenes/dead.tscn")


func count_score():
	$pontuacao.play();
	score += 1
	$CanvasLayer/Label.text = str(score)


func _on_music_start_finished():
	$music_loop.play();
func _on_music_loop_finished():
	$music_loop.play();
