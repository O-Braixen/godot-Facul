extends Node2D

var score = 0
var bestscore = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/last_score.text = str(score)
	$CanvasLayer/best_score.text = str(bestscore)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TouchScreenButton_pressed():
	get_tree().change_scene("res://scenes/menu.tscn")
