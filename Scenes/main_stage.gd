extends Node2D

var car_scene : PackedScene = preload("res://Scenes/car.tscn")
var score: int

func _on_finished_area_body_entered(body: Node2D) -> void:
	call_deferred("change_scene")
	if GlobalScore.score == 0: 
		GlobalScore.score = score
	if GlobalScore.score > score:
		GlobalScore.score = score
	
func change_scene():
	get_tree().change_scene_to_file("res://Scenes/Title.tscn")

func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D
	var pos_maker = $Objects/CarStartPossition.get_children().pick_random() as Marker2D
	car.position = pos_maker.position
	$Objects.add_child(car)
	
	car.connect("body_entered", go_to_title)
	
func go_to_title(body):
	if body.name == "Player":
		call_deferred("change_scene")


func _on_score_timer_timeout() -> void:
	score += 1
	$CanvasLayer/Label.text = 'Score: ' + str(score)
