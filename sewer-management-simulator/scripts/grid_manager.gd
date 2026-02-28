extends Node2D

func _ready():
    print("Sewer scene loaded!")

func _process(delta):
    if Input.is_action_pressed("ui_cancel"):
        get_tree().change_scene_to_file("res://sewer-management-simulator/scenes/game/city.tscn")