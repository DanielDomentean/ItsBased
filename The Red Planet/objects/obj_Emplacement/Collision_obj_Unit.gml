if other.faction == faction
{
	other.hp = min(other.hp + obj_GM.dayrate*heal_rate, other.hp_max);
}