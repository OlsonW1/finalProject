Player p = new Player(200, 200);
Enemy e = new Enemy();
UserInterface ui = new UserInterface();
Bullet[] bull = new Bullet[50];
Bullet[] bull2 = new Bullet[50];
Bullet[] bull3 = new Bullet[50];
Bullet bul = new Bullet();

Circle[] circles = new Circle[50];



void setup() {
  background(0);
  size(800, 800);

//creates bullet arrays
  for (int i = 0; i<bull.length; i++) {
    bull[i] = new Bullet();
    
  }
  for (int i = 0; i<circles.length; i++) {
    circles[i] = new Circle();
  }
  for (int i = 0; i<bull3.length; i++) {
    bull3[i] = new Bullet();
  }
  
}

void draw() {
  background(0);

  ui.pause();
  ui.timer();

  p.move();
  p.make();
  p.dash();
  p.lives();

  e.makeEnemy();
  

  
//checks if bullets contact the palyer
for(Bullet b: bull) {
  p.detect(b);
  
}
for(Circle c: circles) {
  p.detectCircles(c);
  
}
for(Bullet b: bull3) {
  p.detect(b);
  
}

//sends bullets out from the center
  if (ui.timer() > 0 ) {
    for ( int i = 0; i<bull.length; i++) {
      bull[i].show();
      bull[i].move();
      bul.bulBounds();
    }
  }
  if (ui.timer() > 5) {
    for ( int i = 0; i<circles.length; i++) {
      circles[i].show();
      circles[i].move();
    }
  }
  if (ui.timer() > 10) {
    for ( int i = 0; i<bull3.length; i++) {
      bull3[i].show();
      bull3[i].move();
      bul.bulBounds();
    }
  }
  
  if (p.lives <0){
    fill(196,16,16);
    rect(0,0,800,800);
  }
  
   
}
