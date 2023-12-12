import java.util.Random;

int tileZero = 0;
int tileOne = 0;
int tileTwo = 0;
int tileThree = 0;
int tileFour = 0;
int tileFive = 0;
int tileSix = 0;
int tileSeven = 0;
int tileEight = 0;

int tileStatus = 0;
int gameStatus = 0;
int keyStatus = 0;
int progress = 0;


class board {
  //computers turn
  public void Computer() {

    constants a1 = new constants();
    float X1 = a1.x1;
    float X2 = a1.x2;
    float Y1 = a1.y1;
    float Y2 = a1.y2;
    
    //runs if it is the computers turn, plays in a random, available tile
    if (tileStatus == 0) {
      Random rand = new Random();

      int randNum = rand.nextInt(9);

      if (randNum == 0 && tileZero == 0) {
        X1 = 0;
        X2 = 166.67;
        Y1 = 0;
        Y2 = 0;
        new shapes().Cross(X1, X2, Y1, Y2);
        tileZero = 1;
        tileStatus = 1;
      }
      if (randNum == 1 && tileOne == 0) {
        X1 = 166.67;
        X2 = 333.33;
        Y1 = 0;
        Y2 = 0;
        new shapes().Cross(X1, X2, Y1, Y2);
        tileOne = 1;
        tileStatus = 1;
      }
      if (randNum == 2 && tileTwo == 0) {
        X1 = 333.33;
        X2 = 500;
        Y1 = 0;
        Y2 = 0;
        new shapes().Cross(X1, X2, Y1, Y2);
        tileTwo = 1;
        tileStatus = 1;
      }
      if (randNum == 3 && tileThree == 0) {
        X1 = 0;
        X2 = 166.67;
        Y1 = 166.67;
        Y2 = 166.67;
        new shapes().Cross(X1, X2, Y1, Y2);
        tileThree = 1;
        tileStatus = 1;
      }
      if (randNum == 4 && tileFour == 0) {
        X1 = 166.67;
        X2 = 333.33;
        Y1 = 166.67;
        Y2 = 166.67;
        new shapes().Cross(X1, X2, Y1, Y2);
        tileFour = 1;
        tileStatus = 1;
      }
      if (randNum == 5 && tileFive == 0) {
        X1 = 333.33;
        X2 = 500;
        Y1 = 166.67;
        Y2 = 166.67;
        new shapes().Cross(X1, X2, Y1, Y2);
        tileFive = 1;
        tileStatus = 1;
      }
      if (randNum == 6 && tileSix == 0) {
        X1 = 0;
        X2 = 166.67;
        Y1 = 333.33;
        Y2 = 333.33;
        new shapes().Cross(X1, X2, Y1, Y2);
        tileSix = 1;
        tileStatus = 1;
      }
      if (randNum == 7 && tileSeven == 0) {
        X1 = 166.67;
        X2 = 333.33;
        Y1 = 333.33;
        Y2 = 333.33;
        new shapes().Cross(X1, X2, Y1, Y2);
        tileSeven = 1;
        tileStatus = 1;
      }
      if (randNum == 8 && tileEight == 0) {
        X1 = 333.33;
        X2 = 500;
        Y1 = 333.33;
        Y2 = 333.33;
        new shapes().Cross(X1, X2, Y1, Y2);
        tileEight = 1;
        tileStatus = 1;
      }
    }
  }

  //players turn
  public void keyPressed() {

    constants a1 = new constants();
    float X = a1.x;
    float Y = a1.y;

    //runs if it is the players turn, plays in an available tile selected by the player
    if (tileStatus == 1) {
      if (key == '0' && tileZero == 0) {
        X = 83.33;
        Y = 83.33;
        new shapes().Circle(X, Y);
        tileZero = 2;
        tileStatus = 0;
        progress = 1;
      }
      if (key == '1' && tileOne == 0) {
        X = 83.33*3;
        Y = 83.33;
        new shapes().Circle(X, Y);
        tileOne = 2;
        tileStatus = 0;
        progress = 1;
      }
      if (key == '2' && tileTwo == 0) {
        X = 83.33*5;
        Y = 83.33;
        new shapes().Circle(X, Y);
        tileTwo = 2;
        tileStatus = 0;
        progress = 1;
      }
      if (key == '3' && tileThree == 0) {
        X = 83.33;
        Y = 83.33*3;
        new shapes().Circle(X, Y);
        tileThree = 2;
        tileStatus = 0;
        progress = 1;
      }
      if (key == '4' && tileFour == 0) {
        X = 83.33*3;
        Y = 83.33*3;
        new shapes().Circle(X, Y);
        tileFour = 2;
        tileStatus = 0;
        progress = 1;
      }
      if (key == '5' && tileFive == 0) {
        X = 83.33*5;
        Y = 83.33*3;
        new shapes().Circle(X, Y);
        tileFive = 2;
        tileStatus = 0;
        progress = 1;
      }
      if (key == '6' && tileSix == 0) {
        X = 83.33;
        Y = 83.33*5;
        new shapes().Circle(X, Y);
        tileSix = 2;
        tileStatus = 0;
        progress = 1;
      }
      if (key == '7' && tileSeven == 0) {
        X = 83.33*3;
        Y = 83.33*5;
        new shapes().Circle(X, Y);
        tileSeven = 2;
        tileStatus = 0;
        progress = 1;
      }
      if (key == '8' && tileEight == 0) {
        X = 83.33*5;
        Y= 83.33*5;
        new shapes().Circle(X, Y);
        tileEight = 2;
        tileStatus = 0;
        progress = 1;
      }
      //tells the player what keys to press if an incorrect key is pressed
      if (key != '0' && key != '1' && key != '2' && key != '3' && key != '4' && key != '5' && key != '6' && key != '7'&& key != '8') {
        if (gameStatus == 0 && keyStatus == 0 && keyPressed == true) {
          System.out.println("Please press a number from 0-8");
          keyStatus = 1;
        }
      }
      //tells the play that the game has ended if a key is pressed after the game ends
      if (gameStatus == 1 && keyStatus == 0 && keyPressed == true) {
        System.out.println("The game has ended");
        keyStatus = 1;
      }
      if (keyPressed == false) {
        keyStatus = 0;
      }
    }
  }

  //checks if the game is over after each turn
  public void endGame() {
    if (gameStatus == 0) {
      //checks if the player has three tiles in a row in any position and ends the game
      if ((tileZero == 2 && tileOne == 2 && tileTwo == 2) || (tileZero == 2 && tileThree == 2 && tileSix == 2) || (tileZero == 2 && tileFour == 2 && tileEight == 2)
        || (tileOne == 2 && tileFour == 2 && tileSeven == 2) || (tileTwo == 2 && tileFive == 2 && tileEight == 2) || (tileThree == 2 && tileFour == 2 && tileFive == 2)
        || (tileSix == 2 && tileSeven == 2 && tileEight == 2) || (tileTwo == 2 && tileFour == 2 && tileSix == 2)) {
        tileOne = 2;
        tileTwo = 2;
        tileThree = 2;
        tileFour = 2;
        tileFive = 2;
        tileSix = 2;
        tileSeven = 2;
        tileEight = 2;
        System.out.println("You have won!");
        gameStatus = 1;
        progress = 0;
        keyStatus = 1;
        tileStatus = 1;
      }
    }
    if (gameStatus == 0) {
      //checks if the computer has three tiles in a row in any position and ends the game
      if ((tileZero == 1 && tileOne == 1 && tileTwo == 1) || (tileZero == 1 && tileThree == 1 && tileSix == 1) || (tileZero == 1 && tileFour == 1 && tileEight == 1)
        || (tileOne == 1 && tileFour == 1 && tileSeven == 1) || (tileTwo == 1 && tileFive == 1 && tileEight == 1) || (tileThree == 1 && tileFour == 1 && tileFive == 1)
        || (tileSix == 1 && tileSeven == 1 && tileEight == 1) || (tileTwo == 1 && tileFour == 1 && tileSix == 1)) {
        tileOne = 1;
        tileTwo = 1;
        tileThree = 1;
        tileFour = 1;
        tileFive = 1;
        tileSix = 1;
        tileSeven = 1;
        tileEight = 1;
        System.out.println("You have lost!");
        gameStatus = 1;
        progress = 0;
        keyStatus = 1;
        tileStatus = 1;
      }
    }
    if (gameStatus == 0) {
      //checks if every tile is full and there is still no winner and ends the game
      if ((tileZero == 1 || tileZero == 2) && (tileOne == 1 || tileOne == 2) && (tileTwo == 1 || tileTwo == 2)
        && (tileThree == 1 || tileThree == 2) && (tileFour == 1 || tileFour == 2) && (tileFive == 1 || tileFive == 2)
        && (tileSix == 1 || tileSix == 2) && (tileSeven == 1 || tileSeven == 2) && (tileEight == 1 || tileEight == 2)) {
        System.out.println("The game is a draw");
        gameStatus = 1;
        progress = 0;
        keyStatus = 1;
        tileStatus = 1;
      }
    }
    //tells the player that the game is still inprogress after each turn
    if (progress == 1) {
      System.out.println("The game is still in progress");
      progress = 0;
    }
  }
}
