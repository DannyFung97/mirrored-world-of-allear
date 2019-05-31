for(i = 0; i < 2; i++){
	switch(argument0[i]){
	
	case obj_s:
		global.animations[i, 0] = s_idle;
		global.animations[i, 1] = s_run;
		global.animations[i, 2] = s_backstep;
		global.animations[i, 3] = s_walk;
		global.animations[i, 4] = s_roll;
		global.animations[i, 5] = s_os;
		global.animations[i, 6] = s_jump;
		break;
	}
}