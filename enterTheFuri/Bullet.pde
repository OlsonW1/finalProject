public class Bullet {

  float x, y, xSpeed, ySpeed, xCircleSpeed, yCircleSpeed, size, angle, mag;
  PVector v1, v2;


  public Bullet() {
    x= 400;
    y= 400;
   
    xSpeed =(int)(Math.random() * 6) - 3;
    ySpeed =(int)(Math.random() * 6) - 3;
    
    angle = (float)(Math.random() * 360);
    mag = 4;//(float)(Math.random() * 6) - 3;

    xCircleSpeed = mag * cos(angle);
    yCircleSpeed = mag * sin(angle);



    size = 5;
  }
  void show() {
    fill(196, 16, 16);
    noStroke();
    ellipse(x, y, size, size);
  }
void move(){
    x += xSpeed;
    y += ySpeed;
}

  void moveCircles() {
    x += xCircleSpeed;
    y += yCircleSpeed;
  }






  void bulBounds() {
    if (x >= 850 || x <= -50 || y >= 850 || y<= -50) {
      x = 400;
      y = 400;
    }
  }

  public void bound(Bullet b) {
    if (b.getX() >= 850 || b.getX() <= -50 || b.getY() >= 850 || b.getY()<= -50) {
      x = 400;
      y = 400;
    }
  }

  void reset() {
    x = 400;
    y = 400;
  }

  public float getX() {
    return x;
  }

  public float getY() {
    return y;
  }
}
