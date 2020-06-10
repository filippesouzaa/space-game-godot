extends Area2D

var speed = 300
var laser = preload("res://scenes/laser.tscn")

func _ready():
	set_process_input(true)
	
func _input(event):
	if Input.is_action_just_pressed("shoot"):
		disparar()
		var shooting = $"shoot"
		shooting.play()
		
func _process(delta):
	if Input.is_action_pressed("up"):
		if position.y  <= 39:
			position.y = 39
		else:
			position.y -= speed * delta
	if Input.is_action_pressed("down"):
		if position.y >= 566:
			position.y = 566
		else:
			position.y += speed * delta
	if Input.is_action_pressed("left"):
		if position.x <= 25: 
			position.x = 25
		else:
			position.x -= speed * delta
	if Input.is_action_pressed("right"):
		if position.x >= 485:
			position.x = 485
		else:
			position.x += speed * delta
			
func disparar():
	var l = laser.instance()
	l.position = $pos.global_position #é o node ali da direita >>
	get_parent().add_child(l)