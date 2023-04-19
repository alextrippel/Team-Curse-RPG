extends Control

onready var Player = get_node('/root/Game/Player')
var player_old_pos = Vector2.ZERO
var win = false
func _ready():
	pass

func _physics_process(_delta):
	if visible :
		if Player.position != player_old_pos and Player.position != Vector2(64,64):
			player_old_pos = Player.position
			Player.position = Vector2(64,64)


func end_combat():
	Player.position = player_old_pos
	if win == true :
		Global.combats_completed[Global.room]=true
	else:
		pass
	hide()
