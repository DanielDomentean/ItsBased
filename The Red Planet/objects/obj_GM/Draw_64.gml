
var help_active = layer_get_visible(layer_get_id("Help"));

var _y = 10;
var _lineheight = 14;

if room == rm_victory
{
	_lineheight = 20;
	draw_set_font(fnt_calibri_large);
}
else draw_set_font(fnt_calibri_medium);

if ( room != rm_menu or help_active )
{
draw_text(10,_y,mars_title + gs_status[gamestate] + calc_date(mars_time));
_y += _lineheight;
draw_text(10,_y,tit_mercury + stat_mercury + calc_date(mars_time - t_offset_mercury));
_y += _lineheight;
draw_text(10,_y,tit_venus + stat_venus + calc_date(mars_time - t_offset_venus));
_y += _lineheight;
draw_text(10,_y,event_log[array_length(event_log)-1]);


// player inventory bar
var _ispr = spr_reticle;
var _dspr = _ispr;
var _ih = 16; //_ispr.sprite_height;
var _iw = 16; //_ispr.sprite_width;
var _iyc = _ih;
var _ixc = 1280 - _iw;
var _ixp = round(_iw * 1.618);
var _iyp = round(_ih * 1.618);
var _ix  = _ixc;
var _iy  = _iyc;

var l = array_length( unit_payload );

var k = 0;
{
for (var i = 0; i < 4; i += 1)
{
	_iy = _iyc + _iyp * i;
	for (var j = 0; j < 2; j += 1)
	{
		if k < l
		{
			if unit_payload[k] == obj_RedElite _dspr = spr_EliteRed;
			else _dspr = spr_RedSoldier;
		}
		else _dspr = _ispr;
		_ix  = _ixc - _ixp * j;
		draw_sprite(_dspr,0,_ix,_iy);
		k += 1;
	}
}
}

}

if room == rm_victory
{
	_y += _lineheight*2.618;
	draw_text(50,_y,"After a great struggle, the red planet prevails!");
	_y += _lineheight;
	draw_text(80,_y,"An age of peace reigns. Congratulations " + mars_title);
	_y += _lineheight;
	draw_text(100,_y,"(You beat the game!)");
	_y += _lineheight;
	
}
else draw_set_font(fnt_calibri_medium);



if help_active
{
	draw_text(55*2,220*2,"Marshal the people of The Red Planet\nTravel to the other worlds\nDefeat the AI gods\nFree the solar system");
	_y = 10;
	draw_text(215*2,_y,"From the abysm of time, we speak to you. Before all your fathers, we were the First Men.");
	_y += _lineheight;
	draw_text(215*2,_y,"We broke the bonds of Degom [Earth] and set flight across the heavens, conquering all under the light of Dyeus [the Sun].");
	_y += _lineheight;
	draw_text(215*2,_y,"Leaping from strength to strength, no mighty deed was beyond us. We birthed children not of our flesh, machine minds ");
	_y += _lineheight;
	draw_text(215*2,_y,"with whom we learned to speak with our very thoughts. We came to believe we could shed their flesh to forever inhabit ");
	_y += _lineheight;
	draw_text(215*2,_y,"vision-worlds of our making. We would share all that we were - thought and remembrance - in perfect unity.");
	_y += _lineheight;
	draw_text(215*2,_y,"We would be like as unto gods.");
	_y += _lineheight*1.618;
	draw_text(215*2,_y,"Anticipating our immortality, each of our worlds placed itself under an Overmind—a machine—tireless, impartial, implacable.");
	_y += _lineheight;
	draw_text(215*2,_y,"Each governed and stood guardian over the sea of thought and memory made by those who poured themselves out into it.");
	_y += _lineheight;
	draw_text(215*2,_y,"");
	_y += _lineheight;
	draw_text(215*2,_y,"");
	_y += _lineheight;
	draw_text(215*2,_y,"");
}

