extends Node2D

export var speed = 300

func _process(delta):
	var direction = 0
	if Input.is_action_pressed("ui_up"):
		direction -= 1
	if Input.is_action_pressed("ui_down"):
		direction += 1
	position.y += direction * speed * delta
	position.y = clamp(position.y, 0, 600)  # Ajuste selon la hauteur de l'écran
