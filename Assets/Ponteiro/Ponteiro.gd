extends Spatial

const Player = preload('res://Assets/Gugu/Gugu.gd')
const UP = Vector3(0,1,0)
const angular_speed = 2*PI/3

func _ready():
	pass

func _physics_process(delta):
	var new_angle = update_angle(delta)
	rotate_y(new_angle)

func update_angle(delta):
	return delta * angular_speed

func _on_Area_body_entered(body):
	if(body is Player):
		body.take_damage(1)
