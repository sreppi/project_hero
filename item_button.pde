class ItemButton {
  // Variables
  int itemNumber;
  PVector position;
  PVector hitboxSize;
  InventoryCell inventoryCell = null;

  // ItemButton Constructor
  ItemButton(int tempItemNumber, PVector tempHitboxSize)  {
    itemNumber = tempItemNumber;
    hitboxSize = tempHitboxSize;
  }
  
  boolean pointOnItem(float pointX, float pointY) {
    if (pointX > position.x - hitboxSize.x/2 && pointX < position.x + hitboxSize.x/2 &&
        pointY < position.y + hitboxSize.y/2 && pointY > position.y - hitboxSize.y/2) {
          return true;
    }
    return false;
  }
  
  // Move this item to the given InventoryCell
  void dropItem(InventoryCell cell) {
    inventoryCell = cell;
    position = new PVector(cell.position.x, cell.position.y);
  }
  
  // Move this item being dragged back to where it was
  void returnItemToCell() {
    position = new PVector(inventoryCell.position.x, inventoryCell.position.y);
  }

  // The item graphics
  void display() {
    if (itemNumber == 0)  {
      // emptyslot
    } else if (itemNumber == 1)  {
      // blueSlimeFluid
      noStroke();
      // 1,1
      // 1,2
      // 1,3
      // 1,4
      // 1,5
      // 1,6
      // 1,7
      // 1,8
      // 1,9
      // 1,10
      // 1,11
      // 1,12
      // 1,13
      // 1,14
      // 1,15
      // 1,16
      // 2,1
      // 2,2
      // 2,3
      // 2,4
      // 2,5
      // 2,6 Black
      fill(#000000);
      rect(position.x-4,position.y-10, 2, 2);
      // 2,7 Black
      fill(#000000);
      rect(position.x-2,position.y-10, 2, 2);
      // 2,8 Black
      fill(#000000);
      rect(position.x,position.y-10, 2, 2);
      // 2,9 Black
      fill(#000000);
      rect(position.x+2,position.y-10, 2, 2);
      // 2,10 Black
      fill(#000000);
      rect(position.x+4,position.y-10, 2, 2);
      // 2,11 Black
      fill(#000000);
      rect(position.x+6,position.y-10, 2, 2);
      // 2,12
      // 2,13
      // 2,14
      // 2,15
      // 2,16
      // 3,1
      // 3,2
      // 3,3
      // 3,4
      // 3,5 Black
      fill(#000000);
      rect(position.x-6,position.y-8, 2, 2);
      // 3,6
      fill(#58cde8);
      rect(position.x-4,position.y-8, 2, 2);
      // 3,7
      fill(#58cde8);
      rect(position.x-2,position.y-8, 2, 2);
      // 3,8
      fill(#58cde8);
      rect(position.x,position.y-8, 2, 2);
      // 3,9
      fill(#58cde8);
      rect(position.x+2,position.y-8, 2, 2);
      // 3,10
      fill(#58cde8);
      rect(position.x+4,position.y-8, 2, 2);
      // 3,11
      fill(#58cde8);
      rect(position.x+6,position.y-8, 2, 2);
      // 3,12 Black
      fill(#000000);
      rect(position.x+8,position.y-8, 2, 2);
      // 3,13
      // 3,14
      // 3,15
      // 3,16
      // 4,1
      // 4,2
      // 4,3
      // 4,4 Black
      fill(#000000);
      rect(position.x-8,position.y-6, 2, 2);
      // 4,5
      fill(#58cde8);
      rect(position.x-6,position.y-6, 2, 2);
      // 4,6
      fill(#d1eaf4);
      rect(position.x-4,position.y-6, 2, 2);
      // 4,7
      fill(#73bedb);
      rect(position.x-2,position.y-6, 2, 2);
      // 4,8
      fill(#73bedb);
      rect(position.x,position.y-6, 2, 2);
      // 4,9
      fill(#73bedb);
      rect(position.x+2,position.y-6, 2, 2);
      // 4,10
      fill(#73bedb);
      rect(position.x+4,position.y-6, 2, 2);
      // 4,11
      fill(#73bedb);
      rect(position.x+6,position.y-6, 2, 2);
      // 4,12
      fill(#58cde8);
      rect(position.x+8,position.y-6, 2, 2);
      // 4,13 Black
      fill(#000000);
      rect(position.x+10,position.y-6, 2, 2);
      // 4,14
      // 4,15
      // 4,16
      // 5,1
      // 5,2
      // 5,3
      // 5,4 Black
      fill(#000000);
      rect(position.x-8,position.y-4, 2, 2);
      // 5,5
      fill(#58cde8);
      rect(position.x-6,position.y-4, 2, 2);
      // 5,6
      fill(#d1eaf4);
      rect(position.x-4,position.y-4, 2, 2);
      // 5,7
      fill(#73bedb);
      rect(position.x-2,position.y-4, 2, 2);
      // 5,8
      fill(#73bedb);
      rect(position.x,position.y-4, 2, 2);
      // 5,9
      fill(#73bedb);
      rect(position.x+2,position.y-4, 2, 2);
      // 5,10
      fill(#73bedb);
      rect(position.x+4,position.y-4, 2, 2);
      // 5,11
      fill(#73bedb);
      rect(position.x+6,position.y-4, 2, 2);
      // 5,12
      fill(#58cde8);
      rect(position.x+8,position.y-4, 2, 2);
      // 5,13 Black
      fill(#000000);
      rect(position.x+10,position.y-4, 2, 2);
      // 5,14
      // 5,15
      // 5,16
      // 6,1
      // 6,2
      // 6,3 Black
      fill(#000000);
      rect(position.x-10,position.y-2, 2, 2);
      // 6,4
      fill(#58cde8);
      rect(position.x-8,position.y-2, 2, 2);
      // 6,5
      fill(#d1eaf4);
      rect(position.x-6,position.y-2, 2, 2);
      // 6,6
      fill(#73bedb);
      rect(position.x-4,position.y-2, 2, 2);
      // 6,7
      fill(#73bedb);
      rect(position.x-2,position.y-2, 2, 2);
      // 6,8
      fill(#73bedb);
      rect(position.x,position.y-2, 2, 2);
      // 6,9
      fill(#73bedb);
      rect(position.x+2,position.y-2, 2, 2);
      // 6,10
      fill(#73bedb);
      rect(position.x+4,position.y-2, 2, 2);
      // 6,11
      fill(#73bedb);
      rect(position.x+6,position.y-2, 2, 2);
      // 6,12
      fill(#73bedb);
      rect(position.x+8,position.y-2, 2, 2);
      // 6,13
      fill(#58cde8);
      rect(position.x+10,position.y-2, 2, 2);
      // 6,14 Black
      fill(#000000);
      rect(position.x+12,position.y-2, 2, 2);
      // 6,15
      // 6,16
      // 7,1
      // 7,2
      // 7,3 Black
      fill(#000000);
      rect(position.x-10,position.y, 2, 2);
      // 7,4
      fill(#58cde8);
      rect(position.x-8,position.y, 2, 2);
      // 7,5
      fill(#73bedb);
      rect(position.x-6,position.y, 2, 2);
      // 7,6
      fill(#73bedb);
      rect(position.x-4,position.y, 2, 2);
      // 7,7
      fill(#73bedb);
      rect(position.x-2,position.y, 2, 2);
      // 7,8
      fill(#73bedb);
      rect(position.x,position.y, 2, 2);
      // 7,9
      fill(#73bedb);
      rect(position.x+2,position.y, 2, 2);
      // 7,10
      fill(#73bedb);
      rect(position.x+4,position.y, 2, 2);
      // 7,11
      fill(#73bedb);
      rect(position.x+6,position.y, 2, 2);
      // 7,12
      fill(#73bedb);
      rect(position.x+8,position.y, 2, 2);
      // 7,13
      fill(#58cde8);
      rect(position.x+10,position.y, 2, 2);
      // 7,14 Black
      fill(#000000);
      rect(position.x+12,position.y, 2, 2);
      // 7,15
      // 7,16
      // 8,1
      // 8,2
      // 8,3 Black
      fill(#000000);
      rect(position.x-10,position.y+2, 2, 2);
      // 8,4
      fill(#58cde8);
      rect(position.x-8,position.y+2, 2, 2);
      // 8,5
      fill(#73bedb);
      rect(position.x-6,position.y+2, 2, 2);
      // 8,6
      fill(#73bedb);
      rect(position.x-4,position.y+2, 2, 2);
      // 8,7
      fill(#73bedb);
      rect(position.x-2,position.y+2, 2, 2);
      // 8,8
      fill(#73bedb);
      rect(position.x,position.y+2, 2, 2);
      // 8,9
      fill(#73bedb);
      rect(position.x+2,position.y+2, 2, 2);
      // 8,10
      fill(#73bedb);
      rect(position.x+4,position.y+2, 2, 2);
      // 8,11
      fill(#73bedb);
      rect(position.x+6,position.y+2, 2, 2);
      // 8,12
      fill(#73bedb);
      rect(position.x+8,position.y+2, 2, 2);
      // 8,13
      fill(#58cde8);
      rect(position.x+10,position.y+2, 2, 2);
      // 8,14 Black
      fill(#000000);
      rect(position.x+12,position.y+2, 2, 2);
      // 8,15
      // 8,16
      // 9,1
      // 9,2
      // 9,3
      // 9,4 Black
      fill(#000000);
      rect(position.x-8,position.y+4, 2, 2);
      // 9,5
      fill(#58cde8);
      rect(position.x-6,position.y+4, 2, 2);
      // 9,6
      fill(#58cde8);
      rect(position.x-4,position.y+4, 2, 2);
      // 9,7
      fill(#73bedb);
      rect(position.x-2,position.y+4, 2, 2);
      // 9,8
      fill(#73bedb);
      rect(position.x,position.y+4, 2, 2);
      // 9,9
      fill(#73bedb);
      rect(position.x+2,position.y+4, 2, 2);
      // 9,10
      fill(#73bedb);
      rect(position.x+4,position.y+4, 2, 2);
      // 9,11
      fill(#73bedb);
      rect(position.x+6,position.y+4, 2, 2);
      // 9,12
      fill(#58cde8);
      rect(position.x+8,position.y+4, 2, 2);
      // 9,13
      fill(#29718e);
      rect(position.x+10,position.y+4, 2, 2);
      // 9,14 Black
      fill(#000000);
      rect(position.x+12,position.y+4, 2, 2);
      // 9,15
      // 9,16
      // 10,1
      // 10,2
      // 10,3
      // 10,4 Black
      fill(#000000);
      rect(position.x-8,position.y+6, 2, 2);
      // 10,5
      fill(#3690b3);
      rect(position.x-6,position.y+6, 2, 2);
      // 10,6
      fill(#29718e);
      rect(position.x-4,position.y+6, 2, 2);
      // 10,7
      fill(#58cde8);
      rect(position.x-2,position.y+6, 2, 2);
      // 10,8
      fill(#58cde8);
      rect(position.x,position.y+6, 2, 2);
      // 10,9
      fill(#58cde8);
      rect(position.x+2,position.y+6, 2, 2);
      // 10,10
      fill(#58cde8);
      rect(position.x+4,position.y+6, 2, 2);
      // 10,11
      fill(#58cde8);
      rect(position.x+6,position.y+6, 2, 2);
      // 10,12
      fill(#58cde8);
      rect(position.x+8,position.y+6, 2, 2);
      // 10,13
      fill(#3690b3);
      rect(position.x+10,position.y+6, 2, 2);
      // 10,14 Black
      fill(#000000);
      rect(position.x+12,position.y+6, 2, 2);
      // 10,15
      // 10,16
      // 11,1
      // 11,2
      // 11,3
      // 11,4 Black
      fill(#000000);
      rect(position.x-8,position.y+8, 2, 2);
      // 11,5
      fill(#3690b3);
      rect(position.x-6,position.y+8, 2, 2);
      // 11,6
      fill(#3690b3);
      rect(position.x-4,position.y+8, 2, 2);
      // 11,7 Black
      fill(#000000);
      rect(position.x-2,position.y+8, 2, 2);
      // 11,8  Black
      fill(#000000);
      rect(position.x,position.y+8, 2, 2);
      // 11,9
      fill(#29718e);
      rect(position.x+2,position.y+8, 2, 2);
      // 11,10
      fill(#29718e);
      rect(position.x+4,position.y+8, 2, 2);
      // 11,11
      fill(#29718e);
      rect(position.x+6,position.y+8, 2, 2);
      // 11,12 Black
      fill(#000000);
      rect(position.x+8,position.y+8, 2, 2);
      // 11,13
      fill(#73bedb);
      rect(position.x+10,position.y+8, 2, 2);
      // 11,14 Black
      fill(#000000);
      rect(position.x+12,position.y+8, 2, 2);
      // 11,15
      // 11,16
      // 12,1
      // 12,2
      // 12,3
      // 12,4 Black
      fill(#000000);
      rect(position.x-8,position.y+10, 2, 2);
      // 12,5
      fill(#58cde8);
      rect(position.x-6,position.y+10, 2, 2);
      // 12,6 Black
      fill(#000000);
      rect(position.x-4,position.y+10, 2, 2);
      // 12,7
      // 12,8
      // 12,9 Black
      fill(#000000);
      rect(position.x+2,position.y+10, 2, 2);
      // 12,10
      // 12,11 Black
      fill(#000000);
      rect(position.x+2,position.y+10, 2, 2);
      // 12,12
      fill(#3690b3);
      rect(position.x+4,position.y+10, 2, 2);
      // 12,13 Black
      fill(#000000);
      rect(position.x+6,position.y+10, 2, 2);
      // 12,14
      // 12,15 Black
      fill(#000000);
      rect(position.x+10,position.y+10, 2, 2);
      // 12,16
      // 13,1
      // 13,2
      // 13,3
      // 13,4
      // 13,5 Black
      fill(#000000);
      rect(position.x-6,position.y+12, 2, 2);
      // 13,6
      // 13,7
      // 13,8
      // 13,9
      // 13,10
      // 13,11 Black
      fill(#000000);
      rect(position.x+2,position.y+12, 2, 2);
      // 13,12
      fill(#3690b3);
      rect(position.x+4,position.y+12, 2, 2);
      // 13,13 Black
      fill(#000000);
      rect(position.x+6,position.y+12, 2, 2);
      // 13,14
      // 13,15
      // 13,16
      // 14,1
      // 14,2
      // 14,3
      // 14,4
      // 14,5
      // 14,6
      // 14,7
      // 14,8
      // 14,9
      // 14,10
      // 14,11 Black
      fill(#000000);
      rect(position.x+2,position.y+14, 2, 2);
      // 14,12
      fill(#58cde8);
      rect(position.x+4,position.y+14, 2, 2);
      // 14,13 Black
      fill(#000000);
      rect(position.x+6,position.y+14, 2, 2);
      // 14,14
      // 14,15
      // 14,16
      // 15,1
      // 15,2
      // 15,3
      // 15,4
      // 15,5
      // 15,6
      // 15,7
      // 15,8
      // 15,9
      // 15,10
      // 15,11
      // 15,12 Black
      fill(#000000);
      rect(position.x+4,position.y+16, 2, 2);
      // 15,13
      // 15,14
      // 15,15
      // 15,16
      // 16,1
      // 16,2
      // 16,3
      // 16,4
      // 16,5
      // 16,6
      // 16,7
      // 16,8
      // 16,9
      // 16,10
      // 16,11
      // 16,12
      // 16,13
      // 16,14
      // 16,15
      // 16,16
    } else if (itemNumber == 2)  {
      // blueSlimeEye
      noStroke();
      // 1,1
      // 1,2
      // 1,3
      // 1,4
      // 1,5
      // 1,6
      // 1,7
      // 1,8
      // 1,9
      // 1,10
      // 1,11
      // 1,12
      // 1,13
      // 1,14
      // 1,15
      // 1,16
      // 2,1
      // 2,2
      // 2,3
      // 2,4
      // 2,5
      // 2,6
      // 2,7
      // 2,8
      // 2,9
      // 2,10
      // 2,11
      // 2,12
      // 2,13
      // 2,14
      // 2,15
      // 2,16
      // 3,1
      // 3,2
      // 3,3
      // 3,4
      // 3,5
      // 3,6
      // 3,7
      // 3,8
      // 3,9
      // 3,10
      // 3,11
      // 3,12
      // 3,13
      // 3,14
      // 3,15
      // 3,16
      // 4,1
      // 4,2
      // 4,3
      // 4,4
      // 4,5 Black
      fill(#000000);
      rect(position.x-6,position.y-6, 2, 2);
      // 4,6 Black
      fill(#000000);
      rect(position.x-4,position.y-6, 2, 2);
      // 4,7 Black
      fill(#000000);
      rect(position.x-2,position.y-6, 2, 2);
      // 4,8 Black
      fill(#000000);
      rect(position.x,position.y-6, 2, 2);
      // 4,9
      // 4,10
      // 4,11
      // 4,12
      // 4,13
      // 4,14
      // 4,15
      // 4,16
      // 5,1
      // 5,2
      // 5,3
      // 5,4 Black
      fill(#000000);
      rect(position.x-8,position.y-4, 2, 2);
      // 5,5
      fill(#58cde8);
      rect(position.x-6,position.y-4, 2, 2);
      // 5,6
      fill(#58cde8);
      rect(position.x-4,position.y-4, 2, 2);
      // 5,7
      fill(#58cde8);
      rect(position.x-2,position.y-4, 2, 2);
      // 5,8
      fill(#58cde8);
      rect(position.x,position.y-4, 2, 2);
      // 5,9 Black
      fill(#000000);
      rect(position.x+2,position.y-4, 2, 2);
      // 5,10
      // 5,11
      // 5,12
      // 5,13
      // 5,14
      // 5,15
      // 5,16
      // 6,1
      // 6,2
      // 6,3
      // 6,4 Black
      fill(#000000);
      rect(position.x-8,position.y-2, 2, 2);
      // 6,5
      fill(#58cde8);
      rect(position.x-6,position.y-2, 2, 2);
      // 6,6
      fill(#daeaf3);
      rect(position.x-4,position.y-2, 2, 2);
      // 6,7
      fill(#73bedb);
      rect(position.x-2,position.y-2, 2, 2);
      // 6,8
      fill(#73bedb);
      rect(position.x,position.y-2, 2, 2);
      // 6,9
      fill(#58cde8);
      rect(position.x+2,position.y-2, 2, 2);
      // 6,10 Black
      fill(#000000);
      rect(position.x+4,position.y-2, 2, 2);
      // 6,11
      // 6,12
      // 6,13
      // 6,14
      // 6,15
      // 6,16
      // 7,1
      // 7,2
      // 7,3
      // 7,4 Black
      fill(#000000);
      rect(position.x-8,position.y, 2, 2);
      // 7,5
      fill(#58cde8);
      rect(position.x-6,position.y, 2, 2);
      // 7,6
      fill(#73bedb);
      rect(position.x-4,position.y, 2, 2);
      // 7,7
      fill(#73bedb);
      rect(position.x-2,position.y, 2, 2);
      // 7,8
      fill(#73bedb);
      rect(position.x,position.y, 2, 2);
      // 7,9
      fill(#58cde8);
      rect(position.x+2,position.y, 2, 2);
      // 7,10 Black
      fill(#000000);
      rect(position.x+4,position.y, 2, 2);
      // 7,11
      // 7,12
      // 7,13
      // 7,14
      // 7,15
      // 7,16
      // 8,1
      // 8,2
      // 8,3 Black
      fill(#000000);
      rect(position.x-10,position.y+2, 2, 2);
      // 8,4
      fill(#58cde8);
      rect(position.x-7,position.y+2, 2, 2);
      // 8,5
      fill(#73bedb);
      rect(position.x-6,position.y+2, 2, 2);
      // 8,6
      fill(#29718e);
      rect(position.x-4,position.y+2, 2, 2);
      // 8,7
      fill(#29718e);
      rect(position.x-2,position.y+2, 2, 2);
      // 8,8
      fill(#29718e);
      rect(position.x,position.y+2, 2, 2);
      // 8,9
      fill(#73bedb);
      rect(position.x+2,position.y+2, 2, 2);
      // 8,10
      fill(#58cde8);
      rect(position.x+4,position.y+2, 2, 2);
      // 8,11 Black
      fill(#000000);
      rect(position.x+6,position.y+2, 2, 2);
      // 8,12
      // 8,13
      // 8,14
      // 8,15
      // 8,16
      // 9,1
      // 9,2 Black
      fill(#000000);
      rect(position.x-12,position.y+4, 2, 2);
      // 9,3
      fill(#58cde8);
      rect(position.x-10,position.y+4, 2, 2);
      // 9,4
      fill(#73bedb);
      rect(position.x-8,position.y+4, 2, 2);
      // 9,5
      fill(#73bedb);
      rect(position.x-6,position.y+4, 2, 2);
      // 9,6
      fill(#29718e);
      rect(position.x-4,position.y+4, 2, 2);
      // 9,7
      fill(#3690b3);
      rect(position.x-2,position.y+4, 2, 2);
      // 9,8
      fill(#3690b3);
      rect(position.x,position.y+4, 2, 2);
      // 9,9
      fill(#73bedb);
      rect(position.x+2,position.y+4, 2, 2);
      // 9,10
      fill(#73bedb);
      rect(position.x+4,position.y+4, 2, 2);
      // 9,11
      fill(#58cde8);
      rect(position.x+6,position.y+4, 2, 2);
      // 9,12 Black
      fill(#000000);
      rect(position.x+8,position.y+4, 2, 2);
      // 9,13
      // 9,14
      // 9,15
      // 9,16
      // 10,1
      // 10,2 Black
      fill(#000000);
      rect(position.x-12,position.y+6, 2, 2);
      // 10,3
      fill(#58cde8);
      rect(position.x-10,position.y+6, 2, 2);
      // 10,4
      fill(#58cde8);
      rect(position.x-8,position.y+6, 2, 2);
      // 10,5
      fill(#58cde8);
      rect(position.x-6,position.y+6, 2, 2);
      // 10,6
      fill(#58cde8);
      rect(position.x-4,position.y+6, 2, 2);
      // 10,7
      fill(#58cde8);
      rect(position.x-2,position.y+6, 2, 2);
      // 10,8
      fill(#58cde8);
      rect(position.x,position.y+6, 2, 2);
      // 10,9
      fill(#58cde8);
      rect(position.x+2,position.y+6, 2, 2);
      // 10,10
      fill(#58cde8);
      rect(position.x+4,position.y+6, 2, 2);
      // 10,11
      fill(#58cde8);
      rect(position.x+6,position.y+6, 2, 2);
      // 10,12 Black
      fill(#000000);
      rect(position.x+8,position.y+6, 2, 2);
      // 10,13
      // 10,14
      // 10,15
      // 10,16
      // 11,1
      // 11,2 Black
      fill(#000000);
      rect(position.x-12,position.y+8, 2, 2);
      // 11,3 Black
      fill(#000000);
      rect(position.x-10,position.y+8, 2, 2);
      // 11,4 Black
      fill(#000000);
      rect(position.x-8,position.y+8, 2, 2);
      // 11,5 Black
      fill(#000000);
      rect(position.x-6,position.y+8, 2, 2);
      // 11,6 Black
      fill(#000000);
      rect(position.x-4,position.y+8, 2, 2);
      // 11,7 Black
      fill(#000000);
      rect(position.x-2,position.y+8, 2, 2);
      // 11,8 Black
      fill(#000000);
      rect(position.x,position.y+8, 2, 2);
      // 11,9 Black
      fill(#000000);
      rect(position.x+2,position.y+8, 2, 2);
      // 11,10 Black
      fill(#000000);
      rect(position.x+4,position.y+8, 2, 2);
      // 11,11 Black
      fill(#000000);
      rect(position.x+6,position.y+8, 2, 2);
      // 11,12 Black
      fill(#000000);
      rect(position.x+8,position.y+8, 2, 2);
      // 11,13
      // 11,14
      // 11,15
      // 11,16
      // 12,1
      // 12,2
      // 12,3
      // 12,4
      // 12,5
      // 12,6
      // 12,7
      // 12,8
      // 12,9
      // 12,10
      // 12,11
      // 12,12
      // 12,13
      // 12,14
      // 12,15
      // 12,16
      // 13,1
      // 13,2
      // 13,3
      // 13,4
      // 13,5
      // 13,6
      // 13,7
      // 13,8
      // 13,9
      // 13,10
      // 13,11
      // 13,12
      // 13,13
      // 13,14
      // 13,15
      // 13,16
      // 14,1
      // 14,2
      // 14,3
      // 14,4
      // 14,5
      // 14,6
      // 14,7
      // 14,8
      // 14,9
      // 14,10
      // 14,11
      // 14,12
      // 14,13
      // 14,14
      // 14,15
      // 14,16
      // 15,1
      // 15,2
      // 15,3
      // 15,4
      // 15,5
      // 15,6
      // 15,7
      // 15,8
      // 15,9
      // 15,10
      // 15,11
      // 15,12
      // 15,13
      // 15,14
      // 15,15
      // 15,16
      // 16,1
      // 16,2
      // 16,3
      // 16,4
      // 16,5
      // 16,6
      // 16,7
      // 16,8
      // 16,9
      // 16,10
      // 16,11
      // 16,12
      // 16,13
      // 16,14
      // 16,15
      // 16,16
    } else if (itemNumber == 3)  {
      // blueSlimeHeart
      noStroke();
      // 1,1
      // 1,2
      // 1,3
      // 1,4
      // 1,5
      // 1,6
      // 1,7
      // 1,8
      // 1,9
      // 1,10
      // 1,11
      // 1,12
      // 1,13
      // 1,14
      // 1,15
      // 1,16
      // 2,1
      // 2,2
      // 2,3
      // 2,4
      // 2,5
      // 2,6
      // 2,7
      // 2,8
      // 2,9
      // 2,10
      // 2,11
      // 2,12
      // 2,13
      // 2,14
      // 2,15
      // 2,16
      // 3,1
      // 3,2
      // 3,3
      // 3,4
      // 3,5
      // 3,6
      // 3,7
      // 3,8
      // 3,9
      // 3,10
      // 3,11
      // 3,12
      // 3,13
      // 3,14
      // 3,15
      // 3,16
      // 4,1
      // 4,2
      // 4,3
      // 4,4
      // 4,5 Black
      fill(#000000);
      rect(position.x-6,position.y-6, 2, 2);
      // 4,6 Black
      fill(#000000);
      rect(position.x-4,position.y-6, 2, 2);
      // 4,7
      // 4,8
      // 4,9
      // 4,10 Black
      fill(#000000);
      rect(position.x+4,position.y-6, 2, 2);
      // 4,11 Black
      fill(#000000);
      rect(position.x+6,position.y-6, 2, 2);
      // 4,12
      // 4,13
      // 4,14
      // 4,15
      // 4,16
      // 5,1
      // 5,2
      // 5,3
      // 5,4 Black
      fill(#000000);
      rect(position.x-8,position.y-4, 2, 2);
      // 5,5
      fill(#58cde8);
      rect(position.x-6,position.y-4, 2, 2);
      // 5,6
      fill(#58cde8);
      rect(position.x-4,position.y-4, 2, 2);
      // 5,7 Black
      fill(#000000);
      rect(position.x-2,position.y-4, 2, 2);
      // 5,8
      // 5,9 Black
      fill(#000000);
      rect(position.x+2,position.y-4, 2, 2);
      // 5,10
      fill(#58cde8);
      rect(position.x+4,position.y-4, 2, 2);
      // 5,11
      fill(#58cde8);
      rect(position.x+6,position.y-4, 2, 2);
      // 5,12 Black
      fill(#000000);
      rect(position.x+8,position.y-4, 2, 2);
      // 5,13
      // 5,14
      // 5,15
      // 5,16
      // 6,1
      // 6,2
      // 6,3
      // 6,4 Black
      fill(#000000);
      rect(position.x-8,position.y-2, 2, 2);
      // 6,5
      fill(#58cde8);
      rect(position.x-6,position.y-2, 2, 2);
      // 6,6
      fill(#daeaf3);
      rect(position.x-4,position.y-2, 2, 2);
      // 6,7
      fill(#58cde8);
      rect(position.x-2,position.y-2, 2, 2);
      // 6,8 Black
      fill(#000000);
      rect(position.x,position.y-2, 2, 2);
      // 6,9
      fill(#58cde8);
      rect(position.x+2,position.y-2, 2, 2);
      // 6,10
      fill(#73bedb);
      rect(position.x+4,position.y-2, 2, 2);
      // 6,11
      fill(#58cde8);
      rect(position.x+6,position.y-2, 2, 2);
      // 6,12 Black
      fill(#000000);
      rect(position.x+8,position.y-2, 2, 2);
      // 6,13
      // 6,14
      // 6,15
      // 6,16
      // 7,1
      // 7,2
      // 7,3
      // 7,4 Black
      fill(#000000);
      rect(position.x-8,position.y, 2, 2);
      // 7,5
      fill(#58cde8);
      rect(position.x-6,position.y, 2, 2);
      // 7,6
      fill(#73bedb);
      rect(position.x-4,position.y, 2, 2);
      // 7,7 Heart
      fill(#9275E3);
      rect(position.x-2,position.y, 2, 2);
      // 7,8
      fill(#73bedb);
      rect(position.x,position.y, 2, 2);
      // 7,9 Heart
      fill(#9275E3);
      rect(position.x+2,position.y, 2, 2);
      // 7,10
      fill(#73bedb);
      rect(position.x+4,position.y, 2, 2);
      // 7,11
      fill(#58cde8);
      rect(position.x+6,position.y, 2, 2);
      // 7,12 Black
      fill(#000000);
      rect(position.x+8,position.y, 2, 2);
      // 7,13
      // 7,14
      // 7,15
      // 7,16
      // 8,1
      // 8,2
      // 8,3
      // 8,4 Black
      fill(#000000);
      rect(position.x-8,position.y+2, 2, 2);
      // 8,5
      fill(#58cde8);
      rect(position.x-6,position.y+2, 2, 2);
      // 8,6
      fill(#73bedb);
      rect(position.x-4,position.y+2, 2, 2);
      // 8,7 Heart
      fill(#9275E3); 
      rect(position.x-2,position.y+2, 2, 2);
      // 8,8 Heart
      fill(#9275E3);
      rect(position.x,position.y+2, 2, 2);
      // 8,9 Heart
      fill(#9275E3);
      rect(position.x+2,position.y+2, 2, 2);
      // 8,10
      fill(#73bedb);
      rect(position.x+4,position.y+2, 2, 2);
      // 8,11
      fill(#58cde8);
      rect(position.x+6,position.y+2, 2, 2);
      // 8,12 Black
      fill(#000000);
      rect(position.x+8,position.y+2, 2, 2);
      // 8,13
      // 8,14
      // 8,15
      // 8,16
      // 9,1
      // 9,2
      // 9,3
      // 9,4
      // 9,5 Black
      fill(#000000);
      rect(position.x-6,position.y+4, 2, 2);
      // 9,6
      fill(#58cde8);
      rect(position.x-4,position.y+4, 2, 2);
      // 9,7
      fill(#73bedb);
      rect(position.x-2,position.y+4, 2, 2);
      // 9,8 Heart
      fill(#9275E3);
      rect(position.x,position.y+4, 2, 2);
      // 9,9
      fill(#73bedb);
      rect(position.x+2,position.y+4, 2, 2);
      // 9,10
      fill(#58cde8);
      rect(position.x+4,position.y+4, 2, 2);
      // 9,11 Black
      fill(#000000);
      rect(position.x+6,position.y+4, 2, 2);
      // 9,12
      // 9,13
      // 9,14
      // 9,15
      // 9,16
      // 10,1
      // 10,2
      // 10,3
      // 10,4
      // 10,5
      // 10,6 Black
      fill(#000000);
      rect(position.x-4,position.y+6, 2, 2);
      // 10,7
      fill(#58cde8);
      rect(position.x-2,position.y+6, 2, 2);
      // 10,8
      fill(#73bedb);
      rect(position.x,position.y+6, 2, 2);
      // 10,9
      fill(#58cde8);
      rect(position.x+2,position.y+6, 2, 2);
      // 10,10 Black
      fill(#000000);
      rect(position.x+4,position.y+6, 2, 2);
      // 10,11
      // 10,12
      // 10,13
      // 10,14
      // 10,15
      // 10,16
      // 11,1
      // 11,2
      // 11,3
      // 11,4
      // 11,5
      // 11,6 Black
      fill(#000000);
      rect(position.x-6,position.y+8, 2, 2);
      // 11,7 Black
      fill(#58cde8);
      rect(position.x-4,position.y+8, 2, 2);
      // 11,8
      fill(#58cde8);
      rect(position.x-2,position.y+8, 2, 2);
      // 11,9
      fill(#58cde8);
      rect(position.x,position.y+8, 2, 2);
      // 11,10
      fill(#58cde8);
      rect(position.x+2,position.y+8, 2, 2);
      // 11,11 Black
      fill(#58cde8);
      rect(position.x+4,position.y+8, 2, 2);
      // 11,12 Black
      fill(#000000);
      rect(position.x+6,position.y+8, 2, 2);
      // 11,13
      // 11,14
      // 11,15
      // 11,16
      // 12,1
      // 12,2
      // 12,3
      // 12,4
      // 12,5
      // 12,6 Black
      fill(#000000);
      rect(position.x-8,position.y+10, 2, 2);
      // 12,7 Black
      fill(#000000);
      rect(position.x-6,position.y+10, 2, 2);
      // 12,8 Black
      fill(#000000);
      rect(position.x-4,position.y+10, 2, 2);
      // 12,9 Black
      fill(#000000);
      rect(position.x-2,position.y+10, 2, 2);
      // 12,10 Black
      fill(#000000);
      rect(position.x-0,position.y+10, 2, 2);
      // 12,11 Black
      fill(#000000);
      rect(position.x+2,position.y+10, 2, 2);
      // 12,12 Black
      fill(#000000);
      rect(position.x+4,position.y+10, 2, 2);
      // 12,13 Black
      fill(#000000);
      rect(position.x+6,position.y+10, 2, 2);
      // 12,14
      // 12,15
      // 12,16
      // 13,1
      // 13,2
      // 13,3
      // 13,4
      // 13,5
      // 13,6
      // 13,7
      // 13,8
      // 13,9
      // 13,10
      // 13,11
      // 13,12
      // 13,13
      // 13,14
      // 13,15
      // 13,16
      // 14,1
      // 14,2
      // 14,3
      // 14,4
      // 14,5
      // 14,6
      // 14,7
      // 14,8
      // 14,9
      // 14,10
      // 14,11
      // 14,12
      // 14,13
      // 14,14
      // 14,15
      // 14,16
      // 15,1
      // 15,2
      // 15,3
      // 15,4
      // 15,5
      // 15,6
      // 15,7
      // 15,8
      // 15,9
      // 15,10
      // 15,11
      // 15,12
      // 15,13
      // 15,14
      // 15,15
      // 15,16
      // 16,1
      // 16,2
      // 16,3
      // 16,4
      // 16,5
      // 16,6
      // 16,7
      // 16,8
      // 16,9
      // 16,10
      // 16,11
      // 16,12
      // 16,13
      // 16,14
      // 16,15
      // 16,16
    } else if (itemNumber == 4)  {
      noStroke();
      // 1,1
      // 1,2
      // 1,3
      // 1,4
      // 1,5
      // 1,6
      // 1,7
      // 1,8
      // 1,9
      // 1,10
      // 1,11
      // 1,12
      // 1,13
      // 1,14
      // 1,15
      // 1,16
      // 2,1
      // 2,2
      // 2,3
      // 2,4
      // 2,5
      // 2,6
      // 2,7
      // 2,8
      // 2,9
      // 2,10
      // 2,11
      // 2,12
      // 2,13
      // 2,14
      // 2,15
      // 2,16
      // 3,1
      // 3,2
      // 3,3
      // 3,4
      // 3,5
      // 3,6
      // 3,7
      // 3,8
      // 3,9
      // 3,10
      // 3,11
      // 3,12
      // 3,13
      // 3,14
      // 3,15
      // 3,16
      // 4,1
      // 4,2
      // 4,3
      // 4,4
      // 4,5
      // 4,6
      // 4,7
      // 4,8
      // 4,9
      // 4,10
      // 4,11
      // 4,12
      // 4,13
      // 4,14
      // 4,15
      // 4,16
      // 5,1
      // 5,2
      // 5,3
      // 5,4
      // 5,5
      // 5,6
      // 5,7
      // 5,8
      // 5,9
      // 5,10
      // 5,11
      // 5,12
      // 5,13
      // 5,14
      // 5,15
      // 5,16
      // 6,1
      // 6,2
      // 6,3
      // 6,4
      // 6,5
      // 6,6
      // 6,7
      // 6,8
      // 6,9
      // 6,10
      // 6,11
      // 6,12
      // 6,13
      // 6,14
      // 6,15
      // 6,16
      // 7,1
      // 7,2
      // 7,3
      // 7,4
      // 7,5
      // 7,6
      // 7,7
      // 7,8
      // 7,9
      // 7,10
      // 7,11
      // 7,12
      // 7,13
      // 7,14
      // 7,15
      // 7,16
      // 8,1
      // 8,2
      // 8,3
      // 8,4
      // 8,5
      // 8,6
      // 8,7
      // 8,8
      // 8,9
      // 8,10
      // 8,11
      // 8,12
      // 8,13
      // 8,14
      // 8,15
      // 8,16
      // 9,1
      // 9,2
      // 9,3
      // 9,4
      // 9,5
      // 9,6
      // 9,7
      // 9,8
      // 9,9
      // 9,10
      // 9,11
      // 9,12
      // 9,13
      // 9,14
      // 9,15
      // 9,16
      // 10,1
      // 10,2
      // 10,3
      // 10,4
      // 10,5
      // 10,6
      // 10,7
      // 10,8
      // 10,9
      // 10,10
      // 10,11
      // 10,12
      // 10,13
      // 10,14
      // 10,15
      // 10,16
      // 11,1
      // 11,2
      // 11,3
      // 11,4
      // 11,5
      // 11,6
      // 11,7
      // 11,8
      // 11,9
      // 11,10
      // 11,11
      // 11,12
      // 11,13
      // 11,14
      // 11,15
      // 11,16
      // 12,1
      // 12,2
      // 12,3
      // 12,4
      // 12,5
      // 12,6
      // 12,7
      // 12,8
      // 12,9
      // 12,10
      // 12,11
      // 12,12
      // 12,13
      // 12,14
      // 12,15
      // 12,16
      // 13,1
      // 13,2
      // 13,3
      // 13,4
      // 13,5
      // 13,6
      // 13,7
      // 13,8
      // 13,9
      // 13,10
      // 13,11
      // 13,12
      // 13,13
      // 13,14
      // 13,15
      // 13,16
      // 14,1
      // 14,2
      // 14,3
      // 14,4
      // 14,5
      // 14,6
      // 14,7
      // 14,8
      // 14,9
      // 14,10
      // 14,11
      // 14,12
      // 14,13
      // 14,14
      // 14,15
      // 14,16
      // 15,1
      // 15,2
      // 15,3
      // 15,4
      // 15,5
      // 15,6
      // 15,7
      // 15,8
      // 15,9
      // 15,10
      // 15,11
      // 15,12
      // 15,13
      // 15,14
      // 15,15
      // 15,16
      // 16,1
      // 16,2
      // 16,3
      // 16,4
      // 16,5
      // 16,6
      // 16,7
      // 16,8
      // 16,9
      // 16,10
      // 16,11
      // 16,12
      // 16,13
      // 16,14
      // 16,15
      // 16,16
    }
  }
}
