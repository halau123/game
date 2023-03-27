extends Sprite2D

var test = 0;

@onready var child = get_children()[0];

func _ready():
	set_process(true);
	print("HJHH");

func _process(delta):	
	if (Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)):
		print("Left mouse button pressed!")
		
