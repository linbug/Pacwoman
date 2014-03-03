int mapSize = 500, 
borderSize = 50, 
gridSize = 10;

ArrayList enemies;

void setup() {
  size (mapSize+2*borderSize, mapSize+2*borderSize);
  makeEnemies();
}

void makeEnemies() {
  enemies = new ArrayList <Enemy>();
  for (int x = borderSize; x<mapSize+borderSize; x+= gridSize) {
    for (int y = borderSize; y< mapSize+borderSize; y+= gridSize) {
      if (random(100)<2) {
        enemies.add(new Enemy(x, y));
      }
    }
  }
}

void draw() {
  background (255);
  for (int i=0; i<enemies.size(); i++) {
    Enemy myEnemy = (Enemy)enemies.get(i);
    myEnemy.display();
  }
  
}

