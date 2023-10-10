var _targetObj = obj_spawnpoint; // Replace obj_target with the name of the object whose position you want to use
var _posX = _targetObj.x;
var _posY = _targetObj.y;
instance_create_layer(_posX, _posY, "EnemyLayer", obj_enemyspawn);
alarm[0] = spawnrate;


