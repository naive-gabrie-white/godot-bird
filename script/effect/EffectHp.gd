extends Node2D

signal addHpSignal(node: Node2D, other)

func _ready():
	$Area2d.connect("body_entered", Callable(self, "onHpEntered"))
	pass 

func onHpEntered(other_body):
	emit_signal("addHpSignal", self, other_body)
	pass
