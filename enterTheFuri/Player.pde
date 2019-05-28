public class Player {

  float x, y;
  int lives = 300;
  public Player(float x, float y) {
    x = this.x;
    y = this.y;
  }

  void make() {
    fill(255, 255, 255);
    rect(x, y, 30, 30);
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
    if ((Math.abs(x - b.getX())) < 30 && Math.abs((y - b.getY())) < 30) {
      lives--;
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
