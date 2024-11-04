#macro GRAVITY_DEFAULT 0.6

function scr_init_states()
{
	enum states
	{
		normal,
		jump,
		mach,
		machjump,
		slide,
		machturn,
		wallrun,
		machdown
	}
}