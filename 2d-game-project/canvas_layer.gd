extends CanvasLayer

func _ready():
	var background_sprite = Sprite2D.new()
	add_child(background_sprite)

	# Load your background texture
	var background_texture = load("/Users/elliotismail/Desktop/2D-Game-DEEC/2d-game-project/Present/city.png")
	background_sprite.texture = background_texture

	# Set position (e.g., center of the screen)

	# Adjust scale if necessary
	# background_sprite.scale = Vector2(0.5, 0.5)

	# Ensure it's behind other elements
	background_sprite.z_index = -1
