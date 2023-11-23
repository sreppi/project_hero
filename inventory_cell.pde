class InventoryCell {
  // Variables
  int itemNumber;
  PVector position;   // x and y location
  PVector size;   // width and height
  boolean isCellOccupied = false;

  // InventoryCell Constructor
  InventoryCell(PVector tempPosition, PVector tempSize, boolean tempIsCellOccupied, int tempItemNumber) {
    position = tempPosition;
    size = tempSize;
    isCellOccupied = tempIsCellOccupied;
    itemNumber = tempItemNumber;
  }

  // The cell graphics
  void display() {
    fill(#c9cedb);
    stroke(#8d9099);
    strokeWeight(3);
    rect(position.x,position.y,size.x,size.y);
  }
  
  boolean contains(float x, float y) {
  return (x > position.x - size.x / 2 && x < position.x + size.x / 2 &&
          y > position.y - size.y / 2 && y < position.y + size.y / 2);
  }
  
  void placeItem(ItemButton item) {
    itemNumber = item.itemNumber;
    item.position = new PVector(position.x, position.y);
    if (itemNumber > 0)  {  // Not needed, but a failsafe
      isCellOccupied = true;
    } else  {
      isCellOccupied = false;
    }
    item.inventoryCell = this;
  }
}
