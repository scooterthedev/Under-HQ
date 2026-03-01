

if (place_meeting(x, y + 1, oBlock)){ // block collision
	y_speed = 0
	can_jump = true
} else {
	y_speed += 1
	can_jump = false
}

if (place_meeting(x, y, oBlahaj)) { //blahaj hit
	global.lives -= 1
	if (global.lives <= 0) {
		global.lives = 0
		room_goto(DeadScreen)
	} else {
		room_restart()
	}
}

if (place_meeting(x, y, oIntern)) { //death
	room_restart()
}



if (keyboard_check_pressed(vk_up) ){
	if(can_jump){
		y_speed -= 20
	} else {
	alarm[0] = 10
	}
}


if(keyboard_check(vk_left)) { // key checks
	x_speed -= 5
} else if (keyboard_check(vk_right)) {
	x_speed += 5 
} else if (x_speed > 0){
	x_speed -= 1
} else if (x_speed < 0){
	x_speed += 1
}


// limit x and y speed KEEP THIS RIGHT BEFORE THE POSITION UPDATE ISTG

if(x_speed > 10){
	x_speed = 10
} 
if(x_speed < -10){
	x_speed = -10
}


if(y_speed > 40){
	y_speed = 40
}

if(y_speed < -40){
	y_speed = -40
}
// limit x and y speed KEEP THIS RIGHT BEFORE THE POSITION UPDATE ISTG


move_and_collide(x_speed, y_speed, oBlock);