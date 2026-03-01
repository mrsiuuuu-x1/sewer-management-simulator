extends CharacterBody2D

const SPEED = 200.0

func _physics_process(delta):
    var direction = Vector2.ZERO
    
    if Input.is_action_pressed("ui_right"):
        direction.x += 1
    if Input.is_action_pressed("ui_left"):
        direction.x -= 1
    
    velocity = direction.normalized() * SPEED
    move_and_slide()

    var screen_width = get_viewport_rect().size.x
    position.x = clamp(position.x, 0, screen_width)