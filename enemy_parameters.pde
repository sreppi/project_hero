class EnemyParameters{
  // Variables
  float enemyX = 600;
  float enemyY = 100;
  float enemyCurrentHP = 20;
  float enemyStartingHP = 20;
  float enemyTransparencyDrop = 1;
  float enemyHPPercentage = enemyCurrentHP/enemyStartingHP; //Used for green health bar
  float enemyHPBarTransparency = 255; //Used to remove health bar from view
  int enemyDamageFrame = 0;
  int enemyDeathFrame = 0;
  int enemyHurtFrame = 0;
  
  EnemyParameters()  {
  }
  
  // Enemy
  void display()  {
    //float slimeBobbing = (3 * sin(frameCount2 * 0.2));
    float slimeBobbing2 = (3 * cos(frameCount2 * 0.2));
    float slimeBobbing3 = (1.5 * sin(frameCount2 * 0.2));
    enemyHPPercentage = enemyCurrentHP/enemyStartingHP;
    
    if (enemyX > 75 + 50) {
      enemyX -= 0.6;
    } else if (enemyX <= 75 + 50) {
      isPlayerBattling = true;
    }
    // Shadow
    fill(#5F6179, 125 * enemyTransparencyDrop);
    noStroke();
    ellipse(enemyX, enemyY + 17, 40, 10);
    // Body
    fill(#66B5F0, 230 * enemyTransparencyDrop);
    stroke(#3C78ED, 255  * enemyTransparencyDrop);
    strokeWeight(3);
    beginShape();
    vertex(enemyX - 15 + slimeBobbing3, enemyY - 15 + slimeBobbing2);
    vertex(enemyX + 15 - slimeBobbing3, enemyY - 15 + slimeBobbing2);
    vertex(enemyX + 15 - slimeBobbing3, enemyY + 15);
    vertex(enemyX - 15 + slimeBobbing3, enemyY + 15);
    endShape(CLOSE);
    noFill();
    stroke(#3C78ED, 255  * enemyTransparencyDrop);
    strokeWeight(3);
    line(enemyX + 2, enemyY - 1 + slimeBobbing2, enemyX + 2, enemyY + 5 + slimeBobbing2);
    line(enemyX - 9, enemyY - 1 + slimeBobbing2, enemyX - 9, enemyY + 5 + slimeBobbing2);
    noFill();
    stroke(#D0F2F5, 255 * enemyTransparencyDrop);
    strokeWeight(3);
    line(enemyX + 10 - slimeBobbing3, enemyY - 10 + slimeBobbing2, enemyX + 10 - slimeBobbing3, enemyY - 5 + slimeBobbing2);
    
    // Enemy HP Bar
    fill(#FFFFFF, enemyHPBarTransparency); // White
    noStroke();
    rect(enemyX, enemyY - 30, 40, 6);
    fill(#CE2721, enemyHPBarTransparency); // Red
    noStroke();
    rect(enemyX, enemyY - 30, 38, 4);
    fill(#27E528, enemyHPBarTransparency);  // Green
    noStroke();
    beginShape();
    vertex(enemyX - 19, enemyY - 30 - 2);
    vertex(enemyX - 19, enemyY - 30 + 2);
    vertex(enemyX + (-19 + (38 * enemyHPPercentage)), enemyY - 30 + 2);
    vertex(enemyX + (-19 + (38 * enemyHPPercentage)), enemyY - 30 - 2);
    endShape();
    
    if (enemyHPPercentage < 1 && enemyHPPercentage > 0)  {
      enemyHPBarTransparency = 255;
    } else {
      enemyHPBarTransparency = 0;
    }
      // Hurt Enemy
    if (playerX >= 99)  {
      enemyDamageFrame += 1;
    }
    if (enemyDamageFrame > 0 && enemyDamageFrame < 2)  { // This is doing 4 damage each time... But why?
      enemyCurrentHP -= 1;
    }
    if (enemyDamageFrame < 2)  {
      enemyDamageFrame = 0;
    }
  }
}
