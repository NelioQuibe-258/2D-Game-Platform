extends CanvasLayer

func level(num):
	$CurrentLevel.text = "Level " + str(num)
	pass

func gems(count):
	$GemsLabel.text = "Gems " + str(count)
	pass	
