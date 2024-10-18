extends Control

const ADDRESS = "127.0.0.1:8080" 
@export var text_edit: TextEdit
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_host_button_pressed() -> void:
	Network.start(ADDRESS, "", true)


func _on_join_button_pressed() -> void:
	Network._check_webrtc_connection_state()

func _notification(what):
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
	# Perform any cleanup or save operations here before closing
		print("Window close event detected!")
		Network.stop()
