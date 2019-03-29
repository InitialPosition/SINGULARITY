/// @description Rubberbanding

if (instance_exists(obj_shipFinale)) {
	if (distance_to_object(obj_shipFinale) > rubberbandThreshold) {
		x = obj_shipFinale.x - rubberbandThreshold;
	}
}