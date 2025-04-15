var _y = 10;
var _lineheight = 14;

if room == rm_victory
{
	_lineheight = 20;
	draw_set_font(fnt_calibri_large);
}
else draw_set_font(fnt_calibri_medium);

draw_text(10,_y,mars_title + gs_status[gamestate] + calc_date(mars_time));
_y += _lineheight;
draw_text(10,_y,tit_mercury + stat_mercury + calc_date(mars_time - t_offset_mercury));
_y += _lineheight;
draw_text(10,_y,tit_venus + stat_venus + calc_date(mars_time - t_offset_venus));
_y += _lineheight;
draw_text(10,_y,event_log[array_length(event_log)-1]);

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