extends MarginContainer

func _ready():
	AudioManager.play_background_menu()

func _on_LevelSelectBtn_button_up():
	SceneLoader.goto_levels_menu()

func _on_CreditsBtn_button_up():
	SceneLoader.goto_credits()

func _on_QuitBtn_button_up():
	get_tree().quit()
