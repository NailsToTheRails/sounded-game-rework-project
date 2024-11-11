draw_self()
var lifer;
lifer = (lifetime / maxlifetime) * 100;
draw_healthbar(x-10, y-2, x+6, y-8, lifer, c_black, c_orange, c_yellow, 0, true, true)