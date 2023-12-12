void setup() {
  size(500, 500);
  new shapes().DrawBoard();
}

void draw() {

  new board().keyPressed();
  new board().endGame();
  new board().Computer();
  new board().endGame();
}
