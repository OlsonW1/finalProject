Player p = new Player(200, 200);
Enemy e = new Enemy();
UserInterface ui = new UserInterface();
Bullet[] bull = new Bullet[50];
Bullet bul = new Bullet();

void setup() {
  background(0);
  size(800, 800);


  for (int i = 0; i<bull.length; i++) {
    bull[i] = new Bullet();
  }
}

void draw() {
  background(0);

  ui.pause();
  ui.timer();

  p.move();
  p.make();
  p.dash();

  e.makeEnemy();


 if (ui.timer() % 5 == 0 ) {
   for ( int i = 0; i<bull.length; i++) {
      bull[i].show();
      bull[i].move();
      bul.bulBounds();
    }
   }
   
    if (ui.timer() % 10 == 0 ) {
 draw();
    }
}
