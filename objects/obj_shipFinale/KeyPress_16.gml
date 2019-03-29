/// @description Activate boost

moveSpeedMax = boostSpeedMax;
fuelConsumption = fuelConsumptionBoost;

if (keyboard_check(accelerate) && fuel > 0) {
	obj_camera.shake = 1;
	obj_camera.shakeIntensity = 5;
}