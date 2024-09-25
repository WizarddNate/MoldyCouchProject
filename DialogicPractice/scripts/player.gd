extends CharacterBody2D

const default_speed = 50.0
var speed = 50.0


func _physics_process(delta):
	get_input()
	move_and_slide()

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
