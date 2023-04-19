extends Node

var spawn_position = Vector2(100,100)
var init_spawn_pos = Vector2(100,100)

var score = 0

var room = 1
var rooms = [0,'res://Levels/Room1.tscn',
'res://Levels/Room2.tscn','res://Levels/Room3.tscn'
,'res://UI/Game_Over.tscn']

var combats_completed = {0:false,1:false,2:false,3:false}

var room_enemy_type = {0:'',
	1:'',
	2:'Guard',
	3:''
}
var room_enemy_pos = {0:Vector2.ZERO,
	1:Vector2.ZERO,
	2:Vector2(750,450),
	3:Vector2.ZERO
}

var player_stats = {"max_health":10, 'health':10,
	"base_defense":10,'defense':10,
	'base_attack':10, 'attack':10,
	'max_mana':10, 'mana':10
}

var npc_stats = {"max_health":10, 'health':10,
	"base_defense":10,'defense':10,
	'base_attack':10, 'attack':10,
	'max_mana':10, 'mana':10
}

func stat_raise(target, stat, amount):
	if target == 'player':
		player_stats[stat] += amount
	if target == 'npc':
		npc_stats[stat] += amount

func stat_lower(target,stat,amount):
	if target == 'player':
		player_stats[stat] -= amount
	if target == 'npc':
		npc_stats[stat] -= amount

func reset():
	spawn_position = init_spawn_pos
	score = 0
	for key in combats_completed :
		combats_completed[key] = false
	player_stats = {"max_health":10, 'health':10,
		"base_defense":10,'defense':10,
		'base_attack':10, 'attack':10,
		'max_mana':10, 'mana':10
	}

	npc_stats = {"max_health":10, 'health':10,
		"base_defense":10,'defense':10,
		'base_attack':10, 'attack':10,
		'max_mana':10, 'mana':10
	}
