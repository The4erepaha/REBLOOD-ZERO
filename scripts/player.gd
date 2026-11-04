extends Node2D

signal hp_changed()

@export var hp = 100


func _ready() -> void:
	pass

func _physics_process(_delta: float) -> void:
	take_gmd()

func take_gmd():
	#dmg = 10
	
	emit_signal("hp_changed")
