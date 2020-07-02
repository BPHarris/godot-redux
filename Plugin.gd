"""Godot Redux Editor Plugin"""

tool
extends EditorPlugin


func _enter_tree():
	name = 'GodotReduxPlugin'
	print('Godot Redux plugin activated.')


func _exit_tree():
	print('Godot Redux plugin deactivated.')
