/// @description Set up shop

global.paused = 1;

shopItems = 6;

title = "SHOP";

desc[0] = "REFILL FUEL";
desc[1] = "REPAIR SHIP";
desc[2] = "HULL ENFORCEMENT";
desc[3] = "MISSILE";
desc[4] = "WARP MARKER";
desc[5] = "SELL CARGO";

info[0] = "REFILLS YOUR TANK TO 100%";
info[1] = "REPAIRS YOUR SHIP TO 100%";
info[2] = "ENFORCES THE HULL, GIVING MORE RESISTANCE AGAINST ENEMIES. CURRENT LEVEL: " + string(global.hull);
info[3] = "CAN BE USED TO SHOOT OTHER SHIPS. THEY WILL DROP ANY GOLD THEY HAVE COLLECTED. PRESS [E] TO USE. CURRENT AMMO: " + string(global.ammo);
info[4] = "MARKS THIS UNIVERSES WORMHOLE POSITION WITH A BLUE ARROW";
info[5] = "SELL YOUR COLLECTED CARGO FOR COINS";

price[0] = "10";
price[1] = "20";
price[2] = "35";
price[3] = "30";
price[4] = "50";
price[5] = "";

back = "[ ESCAPE ] - TAKE OFF";
back2 = "[ SPACE ]  - SELECT";

instance_create_depth(0, 0, 10, obj_shopSelector);