extends Control

func _ready() -> void:
	$TextureRect/AnimatedSprite2D.play()
	$Score.text = "Best Score: " + str(GlobalScore.score)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("comfirm"):
		get_tree().change_scene_to_file("res://Scenes/main_stage.tscn")
	
