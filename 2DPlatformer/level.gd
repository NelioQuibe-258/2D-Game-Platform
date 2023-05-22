extends Node2D
@export var level_num = 0

func _ready():
	$HUD.level(level_num)
	set_gems_label()
	for gem in $Gems.get_children():
		gem.gem_collected.connect(_on_gem_collected)
	pass
	
func _on_gem_collected():
	set_gems_label()
	pass
 
#Enter the new level
func _on_door_player_entered(level):
	get_tree().change_scene_to_file(level)
	pass # Replace with function body.
	
	
func set_gems_label():
	$HUD.gems(Global.gems_collected)
	pass 

#reset the game
func _input(event):
	if event.is_action_pressed("reset_level"):
		get_tree().reload_current_scene.call_deferred()
		Global.gems_collected = 0
		set_gems_label()
	pass
