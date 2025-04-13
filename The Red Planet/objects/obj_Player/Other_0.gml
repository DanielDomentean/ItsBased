if room == rm_menu
{
	room_goto(obj_GM.last_room);
}
else room_goto(rm_menu);

if false // (room_exists(room_next(room)))
{
    room_goto_next();
}