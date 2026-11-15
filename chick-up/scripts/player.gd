extends CharacterBody2D

const GRAVITY_NORMAL: float = 14.5
var wind_velocity: Vector2 = Vector2.ZERO

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	velocity.y += GRAVITY_NORMAL if wind_velocity.y == 0.0 else 0.0
	velocity += wind_velocity * 0.4
	move_and_slide()
