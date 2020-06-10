extends Area2D

export var vel = 100

func _ready():
	pass

func _process(delta):
	position.y += vel * delta

func _on_inimigo_area_entered(area):
	if area.name != "nave":
		queue_free()	