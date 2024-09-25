extends Area2D

@onready var thought_sprite = $thought

var interactable = false
var already_spoke = false

@export var timeline_name: String

func _process(delta):
	if already_spoke == false:
		talk()	
		
	Dialogic.timeline_ended.connect(timeline_end)

func talk():
	if Input.is_action_pressed("interact") && interactable == true:
		print("start talking")
		#Dialogic.start(timeline_name)
		Dialogic.start("testline")
		#player speed = 0
		already_spoke = true
		interactable = false

func _on_body_entered(body):
	print("area entered")
	thought_sprite.show()
	interactable = true

func _on_body_exited(body):
	print("area exited")
	thought_sprite.hide()
	interactable = false

func timeline_end():
	pass
	#player speed = default_speed
