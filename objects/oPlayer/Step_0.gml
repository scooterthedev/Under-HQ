

if (place_meeting(x, y , oBlock)){
	y_speed = 0
	can_jump = true
} else {
	y_speed -= 5 //gravity
}

if(place_meeting(x,y, oBlahaj){
	room_restart()
}



if (keyboard_check_pressed(vk_up) && can_jump){
	y_speed += 20
}
if(keyboard_check(vk_left){
	x_speed -= 5
}
if(keyboard_check(vk_right){
	x_speed += 5
}


// limit x and y speed KEEP THIS RIGHT BEFORE THE POSITION UPDATE ISTG

if(x_speed > 20){
	x_speed = 20
} 
if(x_speed < -20){
	x_speed = -20
}


if(y_speed > 20){
	y_speed = 20
}
if(y_speed < -20){
	y_speed = -20
}
// limit x and y speed KEEP THIS RIGHT BEFORE THE POSITION UPDATE ISTG


x += x_speed //position update keep this at the end of the step
y += y_speed
