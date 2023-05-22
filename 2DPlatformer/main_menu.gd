extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Main Menu ready")
	$Options/StartButton.grab_focus()
	
	if !OS.has_feature("pc"):
		$Options/FullscrenButton.hide()
		$Options/QuitButton.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://level_1.tscn")
	pass # Replace with function body.


func _on_fullscren_button_pressed():
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	elif  DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_WINDOWED:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	
	pass # Replace with function body.


func _on_quit_button_pressed():
	get_tree().quit()
	pass # Replace with function body.
