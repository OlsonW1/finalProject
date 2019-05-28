Player p = new Player(200, 200);
Enemy e = new Enemy();
UserInterface ui = new UserInterface();
Bullet[] bull = new Bullet[50];
Bullet[] bull2 = new Bullet[50];
Bullet[] bull3 = new Bullet[50];
Bullet[] bull4 = new Bullet[50];
Bullet[] bull5 = new Bullet[50];
Bullet bul = new Bullet();





void setup() {
  background(0);
  size(800, 800);

//creates bullet arrays
  for (int i = 0; i<bull.length; i++) {
    bull[i] = new Bullet();   
  }
   for (int i = 0; i<bull.length; i++) {
    bull2[i] = new Bullet();   
  }
   for (int i = 0; i<bull.length; i++) {
    bull3[i] = new Bullet();   
  }
  for (int i = 0; i<bull3.length; i++) {
    bull4[i] = new Bullet();
  }
   for (int i = 0; i<bull.length; i++) {
    bull5[i] = new Bullet();   
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
for(Bullet b: bull2) {
  p.detect(b); 
}

for(Bullet b: bull3) {
  p.detect(b);
}
for(Bullet b: bull4) {
  p.detect(b);
}
for(Bullet b: bull5) {
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
    if (ui.timer() > 3) {
    for ( int i = 0; i<bull2.length; i++) {
      bull2[i].show();
      bull2[i].moveCircles();
      bul.bulBounds();
    }
  }
  if (ui.timer() > 6) {
    for ( int i = 0; i<bull3.length; i++) {
      bull3[i].show();
      bull3[i].moveCircles();
      bul.bulBounds();
    }
  }
   if (ui.timer() > 9) {
    for ( int i = 0; i<bull4.length; i++) {
      bull4[i].show();
      bull4[i].move();
      bul.bulBounds();
    }
  }
   if (ui.timer() > 12) {
    for ( int i = 0; i<bull5.length; i++) {
      bull5[i].show();
      bull5[i].moveCircles();
      bul.bulBounds();
    }
  }
  
  if (p.lives <0){
    fill(196,16,16);
    rect(0,0,800,800);
  }
  
   
}
