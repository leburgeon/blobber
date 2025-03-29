extends Node
@export var mob_scene: PackedScene
var score

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func game_over() -> void:
	$ScoreTimer.stop()
	$MobTimer.stop()

func new_game():
	score = 0
	$Player.start($StartPosition.position)
	$StartTimer.start()


func _on_mob_timer_timeout() -> void:
	# Create a new instance of the Mob scene
	var mob = mob_scene.instantiate()
	
	# Random location on Path2D
	var mob_spawn_location = $MobPath/MobSpawnLocation


func _on_score_timer_timeout() -> void:
	score += 1


func _on_start_timer_timeout() -> void:
	$MobTimer.start()
	$ScoreTimer.start()


func _on_player_hit() -> void:
	pass # Replace with function body.
