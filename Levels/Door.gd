extends Area2D

func _on_Door_body_entered(body):
	if body.name == "Player":
		if name == "Door_to_2":
			Global.level = 1
		if name == "Door_to_3":
			Global.level = 2
		if Global.level < Global.levels.size():
			var _scene = get_tree().change_scene(Global.levels[Global.level])
		else:
			get_tree().quit()
