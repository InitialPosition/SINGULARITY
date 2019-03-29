global.part_ship_exhaust = part_type_create();
part_type_color_hsv(global.part_ship_exhaust, 0, 30, 190, 255, 190, 255);
part_type_shape(global.part_ship_exhaust, pt_shape_square);
part_type_direction(global.part_ship_exhaust, 0, 359, 0, 0);
part_type_size(global.part_ship_exhaust, 0.1, 0.2, -0.01, 0);
part_type_speed(global.part_ship_exhaust, 1, 3, -0.01, 0);

global.part_missile_exhaust = part_type_create();
part_type_color_hsv(global.part_missile_exhaust, 0, 5, 190, 255, 190, 255);
part_type_shape(global.part_missile_exhaust, pt_shape_square);
part_type_direction(global.part_missile_exhaust, 0, 359, 0, 0);
part_type_size(global.part_missile_exhaust, 0.05, 0.1, -0.01, 0);
part_type_speed(global.part_missile_exhaust, 1, 3, -0.01, 0);

global.part_missileFriendly_exhaust = part_type_create();
part_type_color_hsv(global.part_missileFriendly_exhaust, 110, 115, 190, 255, 190, 255);
part_type_shape(global.part_missileFriendly_exhaust, pt_shape_square);
part_type_direction(global.part_missileFriendly_exhaust, 0, 359, 0, 0);
part_type_size(global.part_missileFriendly_exhaust, 0.05, 0.1, -0.01, 0);
part_type_speed(global.part_missileFriendly_exhaust, 1, 3, -0.01, 0);

global.part_planet_fog = part_type_create();
part_type_color_hsv(global.part_planet_fog, 0, 255, 10, 30, 190, 255);
part_type_shape(global.part_planet_fog, pt_shape_square);
part_type_direction(global.part_planet_fog, 0, 359, 0, 0);
part_type_size(global.part_planet_fog, 0.3, 0.6, -0.01, 0);
part_type_speed(global.part_planet_fog, 0.4, 1, -0.01, 0);
part_type_life(global.part_planet_fog, 180, 240);
part_type_alpha3(global.part_planet_fog, 0, 1, 0);