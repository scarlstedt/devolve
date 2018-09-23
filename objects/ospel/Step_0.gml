/// @description Insert description here
// You can write your code in this editor

if ! instance_exists(oplayer) {
	oscore.state = "lost";
} else {


	SecondsSinceLastEnemySpawn = SecondsSinceLastEnemySpawn + 1 / room_speed

	if ( SecondsSinceLastEnemySpawn >= SecondsBetweenEnemySpawn ) 
		{
	
		// EnemySpawn 
		if choose(true,false) {
			SpawnX = choose(0,2*oplayer.x);
			SpawnY = random(oplayer.y);
		} else {
			SpawnX = random(oplayer.x);
			SpawnY = choose(0,2*oplayer.y);	
		}
		SecondsSinceLastEnemySpawn = 0
		instance_create_depth(SpawnX, SpawnY,5,choose(ofiende,obil));
		instance_create_depth(random(room_width),random(room_height),0,ogun1);
	}
}

