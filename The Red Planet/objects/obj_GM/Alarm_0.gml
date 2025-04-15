// boss defeated

bosses_living -= 1;

if bosses_living <= 0
{
	//game over you won!
	log_story_event(mars_title + "have prevailed!");
	room_goto(rm_victory);
}