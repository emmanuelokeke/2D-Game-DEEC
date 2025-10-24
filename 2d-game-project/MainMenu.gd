extends Control

# Path to the scene you want to load
@export_file("*.tscn") var game_scene_path = "res://past.tscn"

@onready var play_button = $CenterContainer/VBoxContainer/PlayButton
@onready var title_label = $CenterContainer/VBoxContainer/Title

func _ready():
	# Center the title and make it larger
	title_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	title_label.add_theme_font_size_override("font_size", 48)
	
	# Connect the Play button
	play_button.pressed.connect(_on_play_button_pressed)

func _on_play_button_pressed():
	if ResourceLoader.exists(game_scene_path):
		get_tree().change_scene_to_file(game_scene_path)
	else:
		push_warning("Scene not found at: " + game_scene_path)
