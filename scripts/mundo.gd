extends Node2D

var inimigo = preload("res://scenes/inimigo.tscn")
var tempo = 0

func _ready():
	randomize()

func _process(delta):
	tempo += delta
	if tempo > 2:
		spawn()
		tempo = 0

func spawn():
	var i = inimigo.instance()
	i.position = Vector2(rand_range(26,486), $pos_inimigo.position.y)
	self.add_child(i)

