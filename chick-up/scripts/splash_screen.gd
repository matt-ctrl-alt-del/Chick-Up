extends Control

func _ready() -> void:
	await $"Godot splash".animation_finished
	await get_tree().create_timer(1.0).timeout 
	await get_tree().create_timer(1.0).timeout
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func _process(delta: float) -> void:
	pass
