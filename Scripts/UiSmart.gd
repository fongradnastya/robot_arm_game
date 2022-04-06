extends CanvasLayer

var time = 0
func _ready():
	$Timer.start()


func _process(delta):
	time += delta
	var sec = fmod(time, 60)
	var mins = fmod(time, 3600) / 60
	var time_str = "%02d:%02d" % [mins, sec]
	$time_counter/Label.text = time_str
	

func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")
