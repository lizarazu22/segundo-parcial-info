extends TextureRect

@onready var score_label = $MarginContainer/HBoxContainer/score_label
@onready var count_label = $MarginContainer/HBoxContainer/count_label

func _on_score_updated(new_score):
	# Esta función se llamará cada vez que se emita la señal "score_updated" desde el nodo "grid"
	# Actualiza la etiqueta de puntuación en la interfaz de usuario
	score_label.text = str(new_score)

func _on_time_updated(new_time):
	# Esta función se llamará cada vez que se emita la señal "time_updated"
	# Actualiza la etiqueta del contador de tiempo en la interfaz de usuario
	count_label.text = str(int(new_time))

func _on_steps_updated(remaining_moves):
	# Esta función se llamará cada vez que se emita la señal "steps_updated"
	# Actualiza la etiqueta del contador de movimientos en la interfaz de usuario
	count_label.text = str(remaining_moves)
