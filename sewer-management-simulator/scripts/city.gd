extends Node2D

@onready var manhole = $Manhole

func _process(delta):
    var player = $Player
    var distance = player.global_position.distance_to(manhole.global_position)
    if Input.is_action_just_pressed("ui_accept"):
        if distance < 400:
            get_tree().change_scene_to_file("res://sewer-management-simulator/scenes/game/sewer.tscn")