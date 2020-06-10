extends Area2D

export var vel = 0 #ela vai aparecer no inspector quando ponho o export

func _ready():
	pass

func _process(delta):
	position.y -= vel * delta
	#if position.y < -50:
	#	queue_free() #coloca o objeto em fila ou seja, elimina o laser

func _on_notificar_screen_exited():
	queue_free()
