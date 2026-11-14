extends AudioStreamPlayer2D



func _ready() -> void:
	$".".autoplay = true
	$".".set_loop = true


func _process(delta: float) -> void:
	pass
