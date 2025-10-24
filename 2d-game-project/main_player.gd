extends CharacterBody2D

@export var speed = 10
var score = 0

func _logic(delta):
	if Input.is_action_pressed("ui_up"):
		velocity.y -= speed
	elif Input.is_action_pressed("ui_down"):
		velocity.y += speed
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speed
	else:
		velocity = Vector2(0,0)
		pass
	move_and_slide()

func change_score(amount):
	score += amount
	$CanvasLayer/HBoxContainer/Score.text = str(score)

func sucess():
	print("nice!")
