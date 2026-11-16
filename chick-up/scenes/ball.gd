extends CharacterBody2D
var speed = 250

func _ready():
	velocity = Vector2(-200,-200).normalized() * speed
	
func _physics_process(delta):
	var col = move_and_collide(velocity * delta)
	if col:
		velocity = velocity.bounce(col.get_normal())
