/// @description Insert description here
// You can write your code in this editor


if ( instance_exists(oplayer) ) {
x = oplayer.x;
y = oplayer.y;

fire_weapon(obullet,300,20,ablip,5,0,"left");
/// FireWeapon(Type of bullet, bullet speed, kick speed, type of sound, spread of firing, screen shake, button)
if ( oplayer.RocksLeft > 0 ) {
	fire_weapon(orock,200,20,atoss,5,0,"right");
}

}


