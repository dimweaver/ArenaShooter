if (player_health > 0 && hit_cooldown == 0) {
  
    player_health -= 10;
	hit_cooldown = 10;
 
    if (player_health <= 0) {
      
        game_restart();
    }
}


