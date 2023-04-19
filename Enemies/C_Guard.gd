extends Sprite

var health = 10
var max_health = 10
var attack = 20
var defense = 2

var number = 0
var turn = false
onready var Combat = get_node('/root/Game/Combat')
var actions = ['attack', 'defend']

func _ready():
	randomize()
	position = Vector2(800,100)

func choose_action():
	var odds = int(randf()*3)
	if odds == 0:
		return 'defend'
	else :
		return 'attack'

func take_action():
	var action = choose_action()
	if action == 'attack':
		Global.stats['health'] -= attack/Global.stats['defense']
	elif action == 'defend':
		defense *= 2
	print('enemy chose to ' + action)

func damage(d):
	health -= d
	if health <= 0:
		Combat.win = true
