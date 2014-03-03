class Enemy {
  int squareWidth = 10;
  float squareX, 
        squareY;
  
  Enemy (float x, float y){
   squareX = x;
   squareY = y;
  } 
  
  void display(){
    fill(0);
    rect (squareX, squareY, squareWidth, squareWidth);
  }
}
