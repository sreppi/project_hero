class PlayerParameters  {
  // Variables
  float playerX = 75;
  float playerY = 100;
  float playerCurrentHP = 100;
  float playerStartingHP = 100;
  boolean playerIsAttacking = false;
  int playerAttackingFrame = 0;
  int playerAttackingFrame2 = 0;
  int playerHurtFrame = 0;
  
  PlayerParameters(boolean tempPlayerIsAttacking)  {
    playerIsAttacking = tempPlayerIsAttacking;
  }
  
  void display()  {
    // Walking
    float playerBobbing = (1 * sin(frameCount2 * 0.2));
    float playerBobbing2 = (2 * cos(frameCount2 * 0.2)); // Alternate functions so it looks animation looks more lively
    float playerBobbing3 = (2 * sin(frameCount2 * 0.2));
    // Idle
    float playerBobbing5 = (0.5 * cos(frameCount2 * 0.15));
    float playerBobbing6 = (0.5 * sin(frameCount2 * 0.15));

      // Player Attacking
  if (playerIsAttacking == true) {
    if (playerAttackingFrame == 0) {
      playerAttackingFrame += 1;
      playerAttackingFrame2 += 1;
    }
    if (playerAttackingFrame > 0) {
      playerAttackingFrame += 1;
      playerAttackingFrame2 += 1; // This starts counting so the sin function works properly as intended
      if (playerX >= 75)  {
        playerX = 75 + (25 * sin(playerAttackingFrame2 * 0.15));  // Attacking animation
      }
    }
    if (playerAttackingFrame == 60)  {
      playerIsAttacking = false;
      playerAttackingFrame = 0;
      playerAttackingFrame2 = 0;
      playerX = 75;
    }
  }
    // Player
    // Player Shadow
    fill(#5F6179, 125);
    noStroke();
    ellipse(playerX, playerY + 17, 40, 10);
    if (isPlayerBattling == false) {
      // Player
      fill(#FFFFFF);
      stroke(#030303);
      strokeWeight(3);
      rect(playerX + 9, playerY + 6 + playerBobbing3, 6, 6);  // Back Hand
      noFill();
      stroke(#502C11);
      strokeWeight(4);
      line(playerX + 11, playerY + 5 + playerBobbing3, playerX + 29, playerY - 16 + playerBobbing3);  // Weapon
      line(playerX + 9, playerY - 3 + playerBobbing3, playerX + 20, playerY + 4 + playerBobbing3);  // Weapon
      fill(#FFFFFF);
      stroke(#030303);
      strokeWeight(3);
      rect(playerX, playerY + 5 + playerBobbing, 17, 20);  // Body
      rect(playerX - 9, playerY + 6 + playerBobbing3, 6, 6);
      rect(playerX, playerY - 15 + playerBobbing2, 28, 28);  // Head
      line(playerX + 10, playerY - 15 + playerBobbing2, playerX + 10, playerY - 8 + playerBobbing2);
      line(playerX - 2, playerY - 15 + playerBobbing2, playerX - 2, playerY - 8 + playerBobbing2);
    } else if (isPlayerBattling == true) {
      fill(#FFFFFF);
      stroke(#030303);
      strokeWeight(3);
      rect(playerX + 9, playerY + 6 + playerBobbing6, 6, 6);  // Back Hand
      noFill();
      stroke(#502C11);
      strokeWeight(4);
      line(playerX + 11, playerY + 5 + playerBobbing6, playerX + 29, playerY - 16 + playerBobbing6);  // Weapon
      line(playerX + 9, playerY - 3 + playerBobbing6, playerX + 20, playerY + 4 + playerBobbing6);  // Weapon
      fill(#FFFFFF);
      stroke(#030303);
      strokeWeight(3);
      rect(playerX, playerY + 5, 17, 20);  // Body
      rect(playerX - 9, playerY + 6 + playerBobbing6, 6, 6);
      rect(playerX, playerY - 15 + playerBobbing5, 28, 28);  // Head
      line(playerX + 10, playerY - 15 + playerBobbing5, playerX + 10, playerY - 8 + playerBobbing5);
      line(playerX - 2, playerY - 15 + playerBobbing5, playerX - 2, playerY - 8 + playerBobbing5);
    }
    if (keyPressed && isPlayerBattling == true) {
      if (key == ' ') {
        playerIsAttacking = true;
    }
  }
  }
}
