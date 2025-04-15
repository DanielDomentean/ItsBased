
if other.hp < other.hp_max
{
	other.hp += 0.1 + other.hp_max/80;
	hp -= 0.08 + hp_max/80;
	effect_create_above(ef_spark,x,y,1,image_blend);
}