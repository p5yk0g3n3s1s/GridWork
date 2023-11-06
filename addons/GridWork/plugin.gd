@tool
extends EditorPlugin


func _enter_tree():
	# Initialization of the plugin goes here.
	add_custom_type("GridWork", "Node", preload("GridWork.gd"), preload("GridWork.png"))


func _exit_tree():
	# Clean-up of the plugin goes here.
	remove_custom_type("GridWork")
