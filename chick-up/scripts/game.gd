extends Node2D

func _ready() -> void:
	get_tree().paused = false
	$CanvasLayer/Fade_transition.show()
	$CanvasLayer/Fade_transition/AnimationPlayer.play("fade_out")
	await $CanvasLayer/Fade_transition/AnimationPlayer.animation_finished
	$CanvasLayer/Fade_transition.hide()

func _process(delta: float) -> void:
	pass

func _on_killzone_body_entered(body: Node2D) -> void:
	$CanvasLayer/TextureProgressBar.value = 0.0
	get_tree().paused = true
	$player/Camera2D.zoom = Vector2.ONE * 6
	await get_tree().create_timer(1.0).timeout
	$player/Camera2D.zoom = Vector2.ONE * 8
	await get_tree().create_timer(1.0).timeout
	get_tree().reload_current_scene()


func _on_boundary_killzone_body_entered(body: Node2D) -> void:
	$CanvasLayer/TextureProgressBar.value = 0.0
	get_tree().paused = true
	$player/Camera2D.zoom = Vector2.ONE * 6
	await get_tree().create_timer(1.0).timeout
	$player/Camera2D.zoom = Vector2.ONE * 8
	await get_tree().create_timer(1.0).timeout
	get_tree().reload_current_scene()
