var _y = 10;
var _lineheight = 14;

draw_text(10,_y,mars_title + gs_status[gamestate] + calc_date(mars_time));
_y += _lineheight;
draw_text(10,_y,tit_mercury + stat_mercury + calc_date(mars_time - t_offset_mercury));
_y += _lineheight;
draw_text(10,_y,tit_venus + stat_venus + calc_date(mars_time - t_offset_venus));
_y += _lineheight;
draw_text(10,_y,event_log[array_length(event_log)-1]);

