/*

 Student: 
 Calvin Ip
 
 Professor: 
 Kit Barry
 
 Controls:
 Mouse - Click and drag the items in the inventory.
 Spacebar - When the monster appears in front of you, press space to attack!
 
 This project is missing a lot of components I wanted to add due to time contraints. I spent 2 and a half days trying
 to get the inventory system working, and did not leave me enough time for other things. I tried to focus on a demo
 instead.
 
 A monster would block your path and you would attack it to drop loot. There isn't a Game Over or a way to delete items.
 At the very least, the visuals are satisfactory which is what I wanted to try and work on.
 
 Credits:
 Big thanks to Leo Li for helping me understand the concept that's way out of my league. :holding_back_tears:
 
 References:
 2D Arrays: https://processing.org/tutorials/2darray
 
*/

// Variables
//------------------------------------------------------------------------------------------
enum GameState { MAINMENU, MAINGAME }
GameState gameState = GameState.MAINGAME;

int buttonClickedFrame = 0;

// Inventory Cell Variables
InventoryCell [][] cell; // 2D Array used to display x and y positions of a cell
int cols = 5;
int rows = 5;

// Item Database Variables
ItemButton [] existingItems = {}; // Make an empty array
ItemButton itemBeingDragged = null;

// Player Control Variables
boolean isMousePressed = false;

//Drop System Variables
int droppedItemNumberFrame1 = 0;
int droppedItemCode;
int slot1ItemCode;
int slot2ItemCode;
int slot3ItemCode;
int slot4ItemCode;

// Visuals Variable
int backTreeQuantity = 9;
int foregroundQuantity = 2;
int middlegroundQuantity = 2;
int lightSpacingDistance = 400;
BackgroundAssets [][][] backgroundArt; // Each array is used to display an element in the background asset
int battleStartParallaxSwitch = 1; // This is useless now, but kept in the code for the time being because time consuming to remove
boolean isPlayerBattling = false;
int currentFrameCount;
int currentFrameCountFrame = 0;
float frameCountParallax;
int frameCount2 = 0;

// Enemy Variables
EnemyParameters enemy;

// Player Variables
PlayerParameters player;
float playerX = 75;
float playerY = 100;
float playerCurrentHP = 100;
float playerStartingHP = 100;
boolean playerIsAttacking = false;
int playerAttackingFrame = 0;
int playerAttackingFrame2 = 0;
int playerHurtFrame = 0;

void setup() {
  size (400, 550);
  frameRate(60);
  // Makes a grid for the inventory UI.
  cell = new InventoryCell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      cell[i][j] = new InventoryCell(new PVector((i*40)+120, (j*40)+270), new PVector (40, 40), false, 0); //Connects to the array parameters
    }
  }
  // Background Assets, used to make multiple copies and paralaxing effect
  backgroundArt = new BackgroundAssets[backTreeQuantity][foregroundQuantity][middlegroundQuantity];
  for (int i = 0; i < backTreeQuantity; i++) {
    for (int j = 0; j < foregroundQuantity; j++) {
      for (int k = 0; k < middlegroundQuantity; k++) {
        backgroundArt[i][j][k] = new BackgroundAssets(i, battleStartParallaxSwitch, j, k);
      }
    }
  }
  enemy = new EnemyParameters();
}

void draw() {
  
  background(#768ca4);
  rectMode(CENTER);
  switchGameState();
  
  switch(gameState)  {
  
  case MAINGAME:
  if (buttonClickedFrame >= 1)  {
    buttonClickedFrame += 1;
  }
  if (buttonClickedFrame >= 60)  {
    buttonClickedFrame = 0;
  }
      
    // Variables
    float middleParallax = frameCountParallax*-0.35 % 400; // Needs to be in the draw function
    // Walking
    float playerBobbing = (1 * sin(frameCount2 * 0.2));
    float playerBobbing2 = (2 * cos(frameCount2 * 0.2)); // Alternate functions so it looks animation looks more lively
    float playerBobbing3 = (2 * sin(frameCount2 * 0.2));
  
    // Idle
    float playerBobbing5 = (0.5 * cos(frameCount2 * 0.15));
    float playerBobbing6 = (0.5 * sin(frameCount2 * 0.15));
    
    frameCount2 += 1;
  
    // This section allows it to "freeze frame"
    if (isPlayerBattling == false) {
      currentFrameCountFrame = 0;
      if (currentFrameCountFrame == 0) {
        currentFrameCount = frameCount;
        currentFrameCountFrame = currentFrameCount;
        frameCountParallax = currentFrameCount;
        currentFrameCountFrame = 1;
      }
    }
    if (isPlayerBattling == true) {
      currentFrameCountFrame = 0;
      if (currentFrameCountFrame == 0) {
        frameCount = currentFrameCount;
        frameCountParallax = frameCount;
        currentFrameCountFrame = 1;
      }
    }
    
    // Background Art
    // Backest
    fill(#788c9b);
    noStroke();
    rect(200, 75, 400, 150);
  
    // Back Trees
    for (int i = 0; i < backTreeQuantity; i++) {
      for (int j = 0; j < foregroundQuantity; j++) {
        for (int k = 0; k < middlegroundQuantity; k++) {
          backgroundArt[i][j][k].displayBackTrees();
        }
      }
    }
  
    // Floor
    fill(#87a767);
    noStroke();
    rect(200, 117, 400, 65);
  
    // Mist
    fill(#85b0a5, 75);
    noStroke();
    rect(200, 90, 400, 10);
    rect(200, 88, 400, 14);
    rect(200, 86, 400, 16);
    rect(200, 84, 400, 18);
    rect(200, 82, 400, 20);
  
    // Path
    fill(#a4b57d);
    noStroke();
    rect(200, 120, 400, 20);
  
    // Middleground Elements
    for (int i = 0; i < backTreeQuantity; i++) {
      for (int j = 0; j < foregroundQuantity; j++) {
        for (int k = 0; k < middlegroundQuantity; k++) {
          backgroundArt[i][j][k].displayMiddleground();
        }
      }
    }
  
    // Player Attacking
    if (playerIsAttacking == true) {
      if (playerAttackingFrame == 0) {
        playerAttackingFrame += 1;
        playerAttackingFrame2 += 1;
      }
      if (playerAttackingFrame > 0) {
        playerAttackingFrame += 1;
        playerAttackingFrame2 += 1;
        if (playerX >= 75)  {
          playerX = 75 + (25 * sin(playerAttackingFrame * 0.15));  // Attacking animation using the AttackingFrame allows the sin funciton to work as intended
        }
      }
      if (playerAttackingFrame == 30)  {
        playerIsAttacking = false;
        playerAttackingFrame = 0;
        playerAttackingFrame2 = 0;
        playerX = 75;
      }
    }
    
    // Enemy Dies
    if (enemy.enemyCurrentHP <=0)  {
      enemy.enemyDeathFrame += 1;
    }
    if (enemy.enemyDeathFrame >= 1 && enemy.enemyDeathFrame <= 58)  {
      enemy.enemyTransparencyDrop -= 0.1;
    }
    if (enemy.enemyDeathFrame == 59)  {
      droppedItemCode = (int) random(1, 4); // 1 - 3
      addItem();
    }
    if (enemy.enemyDeathFrame >= 60)  {
      enemy.enemyX = 500;
      isPlayerBattling = false;
      enemy.enemyDeathFrame = 0;
      enemy.enemyCurrentHP = enemy.enemyStartingHP;
      enemy.enemyTransparencyDrop = 1;
    }
  
    enemy.display();
    playerAttackControls();
  
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
  
    // Light Peering through the Trees
    // I couldn't put it in the BackgroundAssets class because of how transparency works, so the code is placed here.
    fill(#F2D087, 70);
    noStroke();
    beginShape();
    vertex(86 + (middleParallax * battleStartParallaxSwitch), 0);
    vertex(-2 + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(34 + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(118 + (middleParallax * battleStartParallaxSwitch), 0);
    endShape(CLOSE);
    beginShape();
    vertex(122 + (middleParallax * battleStartParallaxSwitch), 0);
    vertex(38 + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(46 + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(130 + (middleParallax * battleStartParallaxSwitch), 0);
    endShape(CLOSE);
    beginShape();
    vertex(106 + (150) + (middleParallax * battleStartParallaxSwitch), 0);
    vertex(22 + (150) + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(54 + (150) + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(138 + (150) + (middleParallax * battleStartParallaxSwitch), 0);
    endShape(CLOSE);
    beginShape();
    vertex(86 + lightSpacingDistance + (middleParallax * battleStartParallaxSwitch), 0);
    vertex(-2 + lightSpacingDistance + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(34 + lightSpacingDistance + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(118 + lightSpacingDistance + (middleParallax * battleStartParallaxSwitch), 0);
    endShape(CLOSE);
    beginShape();
    vertex(122 + lightSpacingDistance + (middleParallax * battleStartParallaxSwitch), 0);
    vertex(38 + lightSpacingDistance + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(46 + lightSpacingDistance + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(130 + lightSpacingDistance + (middleParallax * battleStartParallaxSwitch), 0);
    endShape(CLOSE);
    beginShape();
    vertex(106 + lightSpacingDistance + (150) + (middleParallax * battleStartParallaxSwitch), 0);
    vertex(22 + lightSpacingDistance + (150) + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(54 + lightSpacingDistance + (150) + (middleParallax * battleStartParallaxSwitch), 120);
    vertex(138 + lightSpacingDistance + (150) + (middleParallax * battleStartParallaxSwitch), 0);
    endShape(CLOSE);
  
    // Foreground
    for (int i = 0; i < backTreeQuantity; i++) {
      for (int j = 0; j < foregroundQuantity; j++) {
        for (int k = 0; k < middlegroundQuantity; k++) {
          backgroundArt[i][j][k].displayForeground();
        }
      }
    }
  
    // Inventory Section
  
    fill(#5b382d);
    noStroke();
    rect(200, 350, 400, 400);
  
    fill(#91725c); // Light
    noStroke();
    rect(200, 155, 400, 3);
  
    fill(#492c11);
    noStroke();
    rect(200, 151, 400, 3);
    
    // Yellow Threads
    noFill();
    stroke(#dbba6b);
    strokeWeight(7);
    // Top
    line(25, 150, 25, 160);
    line(25, 180, 25, 200);
    line(25, 220, 25, 240);
    line(25, 260, 45, 260);
    line(65, 260, 105, 260);
    line(375, 150, 375, 160);
    line(375, 180, 375, 200);
    line(375, 220, 375, 240);
    line(375, 260, 355, 260);
    line(335, 260, 295, 260);
    // Bottom
    line(25, 285, 25, 305);
    line(25, 325, 25, 345);
    line(25, 365, 25, 385);
    line(25, 405, 25, 425);
    line(25, 445, 25, 465);
    line(25, 485, 25, 505);
    line(25, 525, 45, 525);
    line(65, 525, 85, 525);
    line(105, 525, 125, 525);
    line(145, 525, 165, 525);
    line(375, 285, 375, 305);
    line(375, 325, 375, 345);
    line(375, 365, 375, 385);
    line(375, 405, 375, 425);
    line(375, 445, 375, 465);
    line(375, 485, 375, 505);
    line(375, 525, 355, 525);
    line(335, 525, 315, 525);
    line(295, 525, 275, 525);
    line(255, 525, 235, 525);
    
    
    noFill();
    stroke(#a46217);
    strokeWeight(20);
    line(0, 150, 0, 550);
    line(0, 550, 400, 550);
    line(400, 150, 400, 550);
    
    noFill();
    stroke(#111C43, 100);  // Dark Blue Shadow
    strokeWeight(10);
    line(0, 290, 400, 290);
    noFill();
    stroke(#a46217);
    strokeWeight(10);
    line(0, 280, 400, 280);
    
    fill(#111C43, 100);  // Dark Blue Shadow
    noStroke();
    rect(210, 355, 75, 410);
    
    // Binding Belt
    fill(#644b2d);
    stroke(#3c270e);
    strokeWeight(7);
    rect(200, 350, 75, 410);
  
    // Centerpiece
    fill(#111C43, 100);  // Dark Blue Shadow
    noStroke();
    rect(204, 354, 240, 240);
  
    fill(#724319);
    stroke(#261813);
    strokeWeight(7);
    rect(200, 350, 225, 225);
    
  
    // The graphics of the inventory system
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        cell[i][j].display();
        for (int k = 0; k < existingItems.length; k++) {
          existingItems[k].display(); // This allows different types of items to be displayed
        }
      }
    }
  
    // Placing the items onto the mouse
    if (itemBeingDragged != null) {
      itemBeingDragged.position = new PVector(mouseX, mouseY);
    }
  
    /*
    // Debug Section
    debugMode();
    println("frameCountParallax =", frameCountParallax);
    println("currentFrameCount =", currentFrameCount);
    println("currentFrameCountFrame =", currentFrameCountFrame);
    println("frameCountParallax =", frameCountParallax);
    println("middleParallax =", middleParallax);
    println("frameCount =", frameCount);
    println("frameCount2 =", frameCount2);
    println(cell[0][0].itemNumber, cell[1][0].itemNumber, cell[2][0].itemNumber, cell[3][0].itemNumber, cell[4][0].itemNumber);
    println(cell[0][1].itemNumber, cell[1][1].itemNumber, cell[2][1].itemNumber, cell[3][1].itemNumber, cell[4][1].itemNumber);
    println(cell[0][2].itemNumber, cell[1][2].itemNumber, cell[2][2].itemNumber, cell[3][2].itemNumber, cell[4][2].itemNumber);
    println(cell[0][3].itemNumber, cell[1][3].itemNumber, cell[2][3].itemNumber, cell[3][3].itemNumber, cell[4][3].itemNumber);
    println(cell[0][4].itemNumber, cell[1][4].itemNumber, cell[2][4].itemNumber, cell[3][4].itemNumber, cell[4][4].itemNumber);
    println(cell[0][0].isCellOccupied, cell[1][0].isCellOccupied, cell[2][0].isCellOccupied, cell[3][0].isCellOccupied, cell[4][0].isCellOccupied);
    println(cell[0][1].isCellOccupied, cell[1][1].isCellOccupied, cell[2][1].isCellOccupied, cell[3][1].isCellOccupied, cell[4][1].isCellOccupied);
    println(cell[0][2].isCellOccupied, cell[1][2].isCellOccupied, cell[2][2].isCellOccupied, cell[3][2].isCellOccupied, cell[4][2].isCellOccupied);
    println(cell[0][3].isCellOccupied, cell[1][3].isCellOccupied, cell[2][3].isCellOccupied, cell[3][3].isCellOccupied, cell[4][3].isCellOccupied);
    println(cell[0][4].isCellOccupied, cell[1][4].isCellOccupied, cell[2][4].isCellOccupied, cell[3][4].isCellOccupied, cell[4][4].isCellOccupied);
    println("droppedItemCode =", droppedItemCode);
    println("isPlayerBattling =", isPlayerBattling);
    println("enemy.enemyX =", enemy.enemyX);
    println("enemy.enemyDeathFrame =", enemy.enemyDeathFrame);
    // Item Drop Debug Mode
    if (droppedItemNumberFrame1 >= 1) {
      droppedItemNumberFrame1 += 1;
      if (droppedItemNumberFrame1 >= 20) {
        droppedItemNumberFrame1 = 0;
      }
    }
    */
    break;
      
  case MAINMENU:

    fill(#788c9b);
    noStroke();
    rect(200, 75, 400, 150);
    break;
  }
}

// Player Controls

void mousePressed() {
  // Draw all items
  for (int i = 0; i < existingItems.length; i++) {
    if (existingItems[i].pointOnItem(mouseX, mouseY)) {
      itemBeingDragged = existingItems[i];
    }
  }
}

void mouseReleased() {
  if (itemBeingDragged != null) {
    InventoryCell targetCell = findInventoryCellUnderMouse();
    if (targetCell != null) {
      // Check if the target cell is empty
      if (!targetCell.isCellOccupied) {
        // Get the previous cell
        InventoryCell previousCell = itemBeingDragged.inventoryCell;

        // Store the previous cell's item number
        int previousItemNumber = previousCell.itemNumber;

        // Move the item and update the cell status
        itemBeingDragged.dropItem(targetCell);
        itemBeingDragged = null;

        // Set the new cell as occupied
        targetCell.isCellOccupied = true;

        // Update the previous cell's parameters
        previousCell.isCellOccupied = false;
        previousCell.itemNumber = targetCell.itemNumber;

        // Set the target cell's item number
        targetCell.itemNumber = previousItemNumber;
      } else {
        // If the target cell is occupied, return the item to its original cell
        itemBeingDragged.returnItemToCell();
        itemBeingDragged = null;
      }
    } else {
      // No target cell found, return the item to its original cell
      itemBeingDragged.returnItemToCell();
      itemBeingDragged = null;
    }
  }
}

// Find the InventoryCell under the mouse
InventoryCell findInventoryCellUnderMouse() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (cell[i][j].contains(mouseX, mouseY)) {
        return cell[i][j];
      }
    }
  }
  return null; // No cell found
}

void addItem() {
  if (droppedItemCode > 0) {
    // Add item to inventory
    for (int j = 0; j < rows; j++) { // Adding items first goes through the X axis
      for (int i = 0; i < cols; i++) { // Then goes down the Y axis
        if (!cell[i][j].isCellOccupied) {
          ItemButton droppedItemNumber = new ItemButton(droppedItemCode, new PVector(38, 38)); // Create a new item
          existingItems = (ItemButton[])(append(existingItems, droppedItemNumber)); // Add new item to list of existing items
          cell[i][j].placeItem(droppedItemNumber); // Add newly created item to empty cell
          return; // An item has been placed, so end function
        }
      }
    }
  }
}

void playerAttackControls()  {
  if (keyPressed && isPlayerBattling == true) {
    if (key == ' ') {
      playerIsAttacking = true;
    }
  }
}

void switchGameState()  {
  if (keyPressed && buttonClickedFrame == 0) {
    if (key == ']') {
      gameState = GameState.values()[(gameState.ordinal() + 1) %2];
      buttonClickedFrame = 1;
    }
  }
}

/*
void debugMode() {
  if (keyPressed && droppedItemNumberFrame1 == 0) {
    if (key == 'r' || key == 'R') {
      addItem();
      droppedItemNumberFrame1 = 1;
    }
    if (key == 'q' || key == 'Q') {
      droppedItemCode -= 1;
      droppedItemNumberFrame1 = 1;
    }
    if (key == 'e' || key == 'E') {
      droppedItemCode += 1;
      droppedItemNumberFrame1 = 1;
    }
  }
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      isPlayerBattling = true;
    }
  }
  if (keyPressed) {
    if (key == 's' || key == 'S') {
      isPlayerBattling = false;
    }
  }
*/
