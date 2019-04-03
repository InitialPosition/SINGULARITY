global.part_ship_exhaust = part_type_create();
part_type_color_hsv(global.part_ship_exhaust, 0, 30, 190, 255, 190, 255);
part_type_shape(global.part_ship_exhaust, pt_shape_disk);
part_type_direction(global.part_ship_exhaust, 0, 359, 0, 0);
part_type_size(global.part_ship_exhaust, 0.15, 0.25, -0.01, 0);
part_type_speed(global.part_ship_exhaust, 1, 3, -0.01, 0);
part_type_life(global.part_ship_exhaust, 60, 60);

global.part_ship_exhaust_lowFuel = part_type_create();
part_type_color_hsv(global.part_ship_exhaust_lowFuel, 0, 30, 120, 185, 190, 255);
part_type_shape(global.part_ship_exhaust_lowFuel, pt_shape_disk);
part_type_direction(global.part_ship_exhaust_lowFuel, 0, 359, 0, 0);
part_type_size(global.part_ship_exhaust_lowFuel, 0.05, 0.1, -0.01, 0);
part_type_speed(global.part_ship_exhaust_lowFuel, 1, 3, -0.01, 0);
part_type_life(global.part_ship_exhaust_lowFuel, 20, 20);

global.part_missile_exhaust = part_type_create();
part_type_color_hsv(global.part_missile_exhaust, 0, 5, 190, 255, 190, 255);
part_type_shape(global.part_missile_exhaust, pt_shape_disk);
part_type_direction(global.part_missile_exhaust, 0, 359, 0, 0);
part_type_size(global.part_missile_exhaust, 0.1, 0.15, -0.01, 0);
part_type_speed(global.part_missile_exhaust, 1, 3, -0.01, 0);
part_type_life(global.part_missile_exhaust, 60, 60);

global.part_ship_smoke = part_type_create();
part_type_color_hsv(global.part_ship_smoke, 0, 30, 210, 240, 50, 255);
part_type_alpha2(global.part_ship_smoke, 0.2, 0);
part_type_shape(global.part_ship_smoke, pt_shape_disk);
part_type_direction(global.part_ship_smoke, 0, 359, 0, 0);
part_type_size(global.part_ship_smoke, 0.5, 1, -0.001, 0);
part_type_speed(global.part_ship_smoke, 0.4, 1.5, -0.01, 0);
part_type_life(global.part_ship_smoke, 40, 80);