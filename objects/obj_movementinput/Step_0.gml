gp = 7;
i = 0;

global.controls[i, cr.hor] = keyboard_check(ord("D")) - keyboard_check(ord("A")); //move left/right
global.controls[i, cr.Attack] = keyboard_check(ord("S")); //attack
global.controls[i, cr.Jump] = keyboard_check(ord("W")); // jump
global.controls[i, cr.AttackPressed] = keyboard_check_pressed(ord("S"));
global.controls[i, cr.JumpPressed] = keyboard_check_pressed(ord("W"));

gamepad_set_axis_deadzone(gp, 0.05);
gamepad_set_button_threshold(gp, 0.01);

//Input
global.controls[i, cr.hor] += gamepad_axis_value(gp, gp_axislh);
global.controls[i, cr.Attack] += gamepad_button_check(gp, gp_face3);
global.controls[i, cr.Jump] += gamepad_button_check(gp, gp_face2);
global.controls[i, cr.AttackPressed] += gamepad_button_check_pressed(gp, gp_face3);
global.controls[i, cr.JumpPressed] += gamepad_button_check_pressed(gp, gp_face2);