extends Control

onready var label: Label = $score

func _ready() -> void:
	label.text = label.text % [PlayerData.score,PlayerData.deaths]
