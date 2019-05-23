public class Bullet{
  
  int x, y, xSpeed, ySpeed, size;
  
  public Bullet(){
    x= 400;
    y= 400;    
    xSpeed = (int)(Math.random() * 6) - 3;
    ySpeed = (int)(Math.random() * 6) - 3;
    size = 5;
  }
  void show(){
    fill(196, 16, 16);
    noStroke();
    ellipse(x, y, size, size);
  }
  
  void move(){
    x += xSpeed;
    y += ySpeed;
    
  }
  
  void bulBounds(){
      if (x >= 850 || x <= -50 || y >= 850 || y<= -50) {
      x = 400;
      y = 400;
    }
  
  }
  
  void reset(){
    x = 400;
    y = 400;
  }
}
