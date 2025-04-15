
if faction == other.faction exit;
if other.faction == 3 exit;

loyalty -= other.contact_dmg/100;
effect_create_above(ef_firework,x,y,.3*other.contact_dmg,c_white);
instance_destroy(other);