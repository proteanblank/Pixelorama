extends ViewportContainer


func _ready() -> void:
	material = CanvasItemMaterial.new()
	material.blend_mode = CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA


func _on_ViewportContainer_mouse_entered() -> void:
	Global.has_focus = true
	Global.left_cursor.visible = Global.show_left_tool_icon
	Global.right_cursor.visible = Global.show_right_tool_icon


func _on_ViewportContainer_mouse_exited() -> void:
	Global.has_focus = false
	Global.left_cursor.visible = false
	Global.right_cursor.visible = false
