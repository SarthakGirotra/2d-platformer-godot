tool
extends Button

export(String, FILE) var next_scene_path: =""

func _get_configuration_warning() -> String:
	return "The next scene cannot be null" if not next_scene_path else ""

func _on_button_up() -> void:
	get_tree().paused = false
	PlayerData.score = 0
	PlayerData.deaths = 0
	get_tree().change_scene(next_scene_path)
