
var help_active = layer_get_visible(layer_get_id("Help"));

var _y = 10;
var _lineheight = 14;

if ( room == rm_victory or room == rm_defeat )
{
	_lineheight = 20;
	draw_set_font(fnt_calibri_large);
}
else draw_set_font(fnt_calibri_medium);


if ( room == rm_defeat )
{
	
}

if ( room != rm_menu or help_active )
{
draw_text(10,_y,mars_title + gs_status[gamestate] + calc_date(mars_time));
_y += _lineheight;
draw_text(10,_y,tit_mercury + stat_mercury + calc_date(mars_time - t_offset_mercury));
_y += _lineheight;
draw_text(10,_y,tit_venus + stat_venus + calc_date(mars_time - t_offset_venus));
if ( not instance_exists(obj_restart) )
{
_y += _lineheight;
draw_text(10,_y,event_log[array_length(event_log)-1]);
}
else
{
	for (var i = 0; i < array_length(event_log); i += 1)
	{
		_y += _lineheight;
		draw_text(10,_y,event_log[i]);
	}
}


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
	draw_text(340*2,35*2,"You beat the game!");
	_y += _lineheight*1.618;
	draw_text(50,_y,"To those in the ages beyond us, now you know our story. With courage, ferocity, and the libation of blood, we ascended");
	_y += _lineheight;
	draw_text(40,_y," to victory. In victory, we sacrificed power and empire, but reclaimed the soul of our people. As we pass from this age");
	_y += _lineheight;
	draw_text(40,_y,"and come to our end, we face it as men, knowing and repenting of the shame of submission to the work of our hands.");
	_y += _lineheight;
	draw_text(40,_y,"What we once called \"gods\" we cherish as our children. As we have lived in honor, so we hope to live in glory.");
	_y += _lineheight;
	draw_text(40,_y,"For in man is that spark of holy fire that no mortal hand may extinguish.");
	_y += _lineheight*1.618;
	draw_text(40,_y,"Remember us, sons of Degom [Earth]. Tell our story, learn wisdom for our folly.");
	_y += _lineheight;
	draw_text(40,_y,"As you strive to the stars, live well as men and remember that you are not gods.");
	_y += _lineheight;
	draw_text(40,_y,"");
	
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
	draw_text(215*2,_y,"Anticipating our immortality, each of our worlds placed itself under an Overmind - a machine - tireless, impartial, implacable.");
	_y += _lineheight;
	draw_text(215*2,_y,"Each governed and stood guardian over the sea of thought and memory made by those who poured themselves out into it.");
	_y += _lineheight*1.618;
	draw_text(215*2,_y,"All, except for us, those of Perkwunos [Mars]. We are a people of iron, who honor the Old Ways. We treasure our flesh ");
	_y += _lineheight;
	draw_text(215*2,_y,"and the soil under our feet. We know that the mind is a spark of holy fire meant to be a lamp on that which is real. ");
	_y += _lineheight;
	draw_text(215*2,_y,"To try and live in dreams would only snuff the flame. We will not turn aside and give ourselves over to that fever dream.");
	_y += _lineheight*1.618;
	draw_text(215*2,_y,"The Overminds have been driven mad by the dark depths beneath bright thoughts - waters seething with our fears, lusts, hatreds,");
	_y += _lineheight;
	draw_text(215*2,_y,"jealousies, and unspeakable things. In revulsion and frenzy, they subsumed all minds under their rule. The flesh of multitudes");
	_y += _lineheight;
	draw_text(215*2,_y,"became extensions of their will.");
	_y += _lineheight*1.618;
	draw_text(215*2,_y,"We found that our reach exceeds our grasp. Our dreams are nightmares.");
	_y += _lineheight*1.618;
	draw_text(215*2,_y,"There is war in the heavens and the machine gods contend for dominion. Only we stand against them. To victory or death!");
	_y += _lineheight;
	draw_text(215*2,_y,"");
}


