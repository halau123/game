extends CanvasLayer



@onready var anim = $AnimationPlayer;

const w1h = preload("res://scenes/world_1/world_1_home.tscn")
const w1l1 = preload("res://scenes/world_1/world_1_level_1.tscn")

func _ready():
	get_node("ColorRect").hide();
	


func change_scene(target, x, y) -> void:
	get_node("ColorRect").show();
	get_node("AnimationPlayer").play("scene_fade_in");
	await get_node("AnimationPlayer").animation_finished;
	
	var stage = target.instantiate();
	get_tree().get_root().get_child(1).free();
	get_tree().get_root().add_child(stage);
	stage.get_node("character_main").position = Vector2(x,y)

	
	get_node("AnimationPlayer").play_backwards("scene_fade_in");
	await get_node("AnimationPlayer").animation_finished;
	get_node("ColorRect").hide();
	
	
	
