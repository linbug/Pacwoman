int mapSize = 500, 
borderSize = 50,
speed = 2, 
gridSize = 10;
Enemy evil;
Pac woman;
float counter = 1;
//ArrayList enemies;

void setup() {
  size (mapSize+2*borderSize, mapSize+2*borderSize);
  evil = new Enemy (10,10);
  woman = new Pac (mapSize/2, mapSize/2, gridSize, speed);
 // makeEnemies();
}

/*void makeEnemies() {
  enemies = new ArrayList <Enemy>();
  for (int x = borderSize; x<mapSize+borderSize; x+= gridSize) {
    for (int y = borderSize; y< mapSize+borderSize; y+= gridSize) {
      if (random(100)<2) {
        enemies.add(new Enemy(x, y));
      }
    }
  }
}*/

void draw() {
  background (0);
  counter += 0.15;
  evil.display();
  evil.move();
   woman.display();
  woman.move();
  woman.isonMap();
  /*for (int i=0; i<enemies.size(); i++) {
    Enemy myEnemy = (Enemy)enemies.get(i);
    myEnemy.display();
  }*/
  
}

