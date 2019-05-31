public class Player {

  float x, y;
  int lives = 100;
  public Player(float x, float y) {
    x = this.x;
    y = this.y;
  }

  void make() {
    fill(255, 255, 255);
    rect(x, y, 20, 20);
  }

  void move() {
    if (key == 'W' || key == 'w') {
      y -= 8;
      bounds();
    } else if (key == 'A' || key == 'a') {
      x -= 8;
      bounds();
    } else if (key == 'S' || key == 's') {
      y += 8;
      bounds();
    } else if (key == 'D' || key == 'd') {
      x += 8;
      bounds();
    }
    loop();
  }

  void bounds() {
    if (x >= 850) {
      x = -50;
    } else if (y>=850) {
      y = -50;
    } else if (x<-50) {
      x = 850;
    } else  if (y<-50) {
      y = 850;
    }
  }

  void dash() {
    if (key == 'E' || key == 'e') {
      int t = millis()/1000;

      bounds();
    }
  }

  public float getX() {
    return x;
  }

  public float getY() {
    return y;
  }
  
  public void detect(Bullet b) {
    if ((Math.abs(x - b.getX())) < 20 && Math.abs((y - b.getY())) < 20) {
      lives--;
    }
  }
  public void detect(Life L) {
    if ((Math.abs(x - L.getLifeX())) < 20 && Math.abs((y - L.getLifeY())) < 20) {
      lives+=20;
      L.hideLife();
    }
  }
 


  void lives() {
    fill(255);
    text(lives, 600, 20);
  }

  public int getLives() {
    return lives;
  }
}
