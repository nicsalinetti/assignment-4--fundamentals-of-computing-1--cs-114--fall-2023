class shapes {
  //function to draw the board tiles
  public void DrawBoard() {
    line(166.67, 0, 166.67, 500);
    line(333.33, 0, 333.33, 500);
    line(0, 166.67, 500, 166.67);
    line(0, 333.33, 500, 333.33);
  }
  //function to draw the circles
  public void Circle(float X, float Y) {
    circle(X, Y, 166.67);
  }
  //function to draw the crosses
  public void Cross(float X1, float X2, float Y1, float Y2) {
    line(X1, Y1, X1+166.67, Y1+166.67);
    line(X2, Y2, X2-166.67, Y2+166.67);
  }
}
