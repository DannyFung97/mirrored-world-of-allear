hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * moveSpeed;
if(vsp < 140) vsp += obj_spawnctrl.grav

if(dodging){
	if (image_index > image_number - 1){
		dodging = false	
	}
}
if(hsp != 0 && keyboard_check(ord("S"))){
	sprite_index = s_roll
	hsp = image_xscale * sprint * moveSpeed
	dodging = true;
}
if(hsp == 0 && keyboard_check_pressed(ord("S"))){
	hsp = -image_xscale * 500
	sprite_index = s_backstep
	dodging = true;
}
if(!dodging){
	if(place_meeting(x,y+1,o)){
		if(hsp != 0){
			if(hsp > 0){
				image_xscale = 1;
			}
			else{
				image_xscale = -1;
			}
			if(keyboard_check(vk_shift)){
				sprite_index = s_run;
				hsp *= sprint;
			}
			else{
				sprite_index = s_walk;
			}
		}
		else {
			sprite_index = s_idle
		}
	}
	else{
		if(hsp > 0){
			image_xscale = 1;
		}
		else{
			image_xscale = -1;
		}
		sprite_index = s_jump
		if(keyboard_check(vk_shift)){
			hsp *= sprint;
		}
	}
}


if(place_meeting(x,y+1,o)){
	vsp = keyboard_check(ord("W")) * -jumpSpeed;
}
//Horizontal collision
if (place_meeting(x+hsp,y,o))
{
    while(!place_meeting(x+sign(hsp),y,o))
    {
    x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical collision
if (place_meeting(x,y+vsp,o))
{
    while(!place_meeting(x,y+sign(vsp),o))
    {
    y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;