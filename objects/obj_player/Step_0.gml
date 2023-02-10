key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_space = keyboard_check_pressed(vk_up);

var move = key_right - key_left
hsp = move * walksp;
vsp = vsp + grv

if (place_meeting(x,y+1,obj_wall)) and (key_space)
{
	vsp = -7
}	

if place_meeting(x + hsp,y,obj_wall)
{
	while (!place_meeting(x + sign(hsp),y, obj_wall))
	{
		x = x + sign(hsp)
	}
	hsp = 0
}	

x = x + hsp;



if place_meeting(x,y + vsp,obj_wall)
{
	while (!place_meeting(x,y + sign(vsp), obj_wall))
	{
		y = y + sign(vsp)
	}
	vsp = 0
}	

y = y + vsp;



if (hsp != 0) image_xscale = sign(hsp);

if (!place_meeting(x,y,obj_fastpadup))
{
	grv = 0.3
}



if(mouse_check_button_pressed(mb_left))
{
	mx = mouse_x
	my = mouse_y
	if(place_meeting(mx,my,obj_grappleblock))
	{
		active = true
	}
}


if(active)
{
	x += (mx - x) * 0.05
	y += (my - y) * 0.05
}

if(mouse_check_button_released(mb_left))
{
	active = false	
}



