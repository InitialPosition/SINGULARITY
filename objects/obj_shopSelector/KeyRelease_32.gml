/// @description Purchase

switch (selection) {
	case 0:
		if (global.coins >= 10) {
			global.coins -= 10;
			global.carryFuel = 100;
			global.fuel = 100;
		}
		break;
	case 1:
		if (global.coins >= 20) {
			global.coins -= 20;
			global.carryHP = 100;
			global.hp = 100;
		}
		break;
	case 2:
		if (global.coins >= 35) {
			global.coins -= 35;
			global.hull++;
			
			obj_shop.info[2] = "ENFORCES THE HULL, GIVING MORE RESISTANCE AGAINST ENEMIES. CURRENT LEVEL: " + string(global.hull);
		}
		break;
	case 3:
		if (global.coins >= 30) {
			global.coins -= 30;
			global.ammo++;
			
			obj_shop.info[3] = "CAN BE USED TO SHOOT OTHER SHIPS. THEY WILL DROP ANY GOLD THEY HAVE COLLECTED. PRESS [E] TO USE. CURRENT AMMO: " + string(global.ammo);
		}
		break;
	case 4:
		if (global.coins >= 50) {
			global.coins -= 50;
			instance_create_layer(0, 0, "Instances", obj_warpPointer);
		}
		break;
	case 5:
		if (global.cargo > 0) {
			while (global.cargo > 0) {
				global.cargo -= irandom_range(5, 10);
				global.coins += irandom_range(3, 5);
			}
			global.cargo = 0;
		}
		break;
}