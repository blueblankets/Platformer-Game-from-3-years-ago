x = obj_player.x
y = obj_player.y

image_angle = point_direction(x,y,mouse_x,mouse_y)

firing_delay = firing_delay - 1

if (mouse_check_button(mb_left)) and (firing_delay < 0)
{
	firing_delay = 3
	with (instance_create_layer(x,y,"Instances",obj_bulletASR))
	{
		speed = 25
		direction = other.image_angle
		image_angle = direction
	}
}