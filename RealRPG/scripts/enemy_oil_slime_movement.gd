extends CharacterBody2D

@onready var nav_agent = $NavigationAgent2D

var speed = 30;
var motion = Vector2.ZERO;
var destination : Vector2;


func create_path(new_destination:Vector2):
	destination = new_destination;
	$NavigationAgent2D.set_target_position(destination);
	
func _integrate_forces(_state):
	if ($NavigationAgent2D.is_target_reachable()):
		var target = $NavigationAgent2D.get_next_path_position();
		var velocity = position.direction_to(target).normalized() * speed;
		$NavigationAgent2D.set_velocity(velocity)
	else:
		set_velocity(Vector2.ZERO)
	



func _on_navigation_agent_2d_velocity_computed(safe_velocity):
	set_velocity(Vector2.ZERO)
