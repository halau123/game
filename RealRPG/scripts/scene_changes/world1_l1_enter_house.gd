extends Area2D

var enter = false;


func _on_body_entered(body: CharacterBody2D):
	enter = true;


func _on_body_exited(body):
	enter = false;
	
func _process(_delta):
	if (enter == true):
		if (Input.is_action_just_pressed("interact")):
			SceneTransition.change_scene(SceneTransition.w1h, 134, 139);
		
