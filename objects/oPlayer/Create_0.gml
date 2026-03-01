x_speed = 0
y_speed = 0
can_jump = true
if (!variable_global_exists("lives")) {
	global.lives = 10
}
game_over = (global.lives <= 0)

