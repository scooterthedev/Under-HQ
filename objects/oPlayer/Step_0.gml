y_speed -= 5 //gravity

if (place_meeting(x, y - 5, oBlock)){
	y_speed = 0
	can_jump = true
}

if (keyboard_check_pressed(vk_up)){
	y_speed += 20
}


x += x_speed
y += y_speed
