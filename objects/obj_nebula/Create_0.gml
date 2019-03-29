/// @description generate random stuff

imgA = 0;
imgAF = random_range(0.001, 0.004);
maxAlpha = 0.5;

imageScale = random_range(2, 5);
subImg = irandom_range(0, 4);
movSpeed = random_range(0.1, 0.5);

direction = random(360);
speed = movSpeed;

lifeTimer = irandom_range(15, 60) * room_speed;
alarm[0] = lifeTimer;

nebulaColor = make_color_hsv(irandom_range(global.nebulaColorScheme - 40, global.nebulaColorScheme + 40) % 255, 255, 255);

OOBM = 200;

killSwitch = 0;
spawned = 0;
minOverlapDist = 2000;

savedSpeed = speed;