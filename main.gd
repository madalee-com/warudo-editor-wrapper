extends Control

func _on_ready() -> void:
	var args = OS.get_cmdline_args()
	OS.execute("electron", args)
	get_tree().quit()
