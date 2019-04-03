/// @description Flagg explosion as done

if (!other.tookDamage) {
	other.tookDamage = 1;
	
	baseDamage = irandom_range(8, 16);
	global.hp -= round(baseDamage / (round(global.hull / 3) + 1));
}