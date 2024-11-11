if (floor(image_index) == (image_number - 1))
{
	if (sprite_index == spr_cheeseblock)
	{
		mask_index = spr_wall
		sprite_index = spr_cheeseblock_falling;
		falling = true;
	}
	if (sprite_index == spr_cheeseblock_falling)
	{
		mask_index = spr_null
		sprite_index = spr_cheeseblock_falled;
		falling = true;
	}
	else if (sprite_index == spr_cheeseblock_reform)
	{
		mask_index = spr_wall
		falling = false;
		sprite_index = spr_cheeseblock;
		image_index = 0;
		image_speed = 0;
	}
}
if (falling && sprite_index == spr_cheeseblock && image_speed == 0)
	image_speed = 0.35;
if (sprite_index == spr_cheeseblock_falled && reset > 0)
	reset--;
if (reset <= 0 && !place_meeting(x, y - 1, obj_sound))
{
	reset = 100;
	sprite_index = spr_cheeseblock_reform;
	image_index = 0;
	image_speed = 0.35;
	falling = false;
}

if place_meeting(x, y - 1, obj_sound)
	{
		if !falling
				{
				falling = true;
				sprite_index = spr_cheeseblock_falling;
				image_speed = 0.35;
				image_index = 0;
			}
}