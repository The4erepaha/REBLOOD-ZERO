extends Node2D

@onready var player = $player
@onready var hud = $hud

func _ready() -> void:
	player.hp_changed.connect(update_hud)
	pass

func update_hud():
	$hud/hp_player.text = "HP: " + str(int(player.hp))
