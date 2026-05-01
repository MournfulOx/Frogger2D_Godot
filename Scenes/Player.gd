extends CharacterBody2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

var direction: Vector2
var speed: int = 65
var last_facing: StringName = &"down"

func _physics_process(delta: float) -> void:
	direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	move_and_slide()
	update_animation()

func update_animation() -> void:
	if direction == Vector2.ZERO:
		animated_sprite.play(last_facing)
		animated_sprite.stop()
		animated_sprite.frame = 0
		return

	if absf(direction.x) > absf(direction.y):
		if direction.x > 0.0:
			last_facing = &"right"
		else:
			last_facing = &"left"
	else:
		if direction.y > 0.0:
			last_facing = &"down"
		else:
			last_facing = &"up"

	if animated_sprite.animation != last_facing or not animated_sprite.is_playing():
		animated_sprite.play(last_facing)
