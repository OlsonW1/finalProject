public class Circle{
  
  int x, y, xSpeed, ySpeed, size;
  PVector v1, v2;
  
  
  public Circle(){
    x= 400;
    y= 400;    
    xSpeed = (int)(Math.random() * 6) - 3;
    ySpeed = (int)(Math.random() * 6) - 3;
    v1 = new PVector(((int)(Math.random() * 100) - 200),((int)(Math.random() * 100) - 200));
  v2 = new PVector((int)(Math.random() * 100) - 200,(int)(Math.random() * 100) - 200);
    
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
  
    void circleShow(){
    fill(196, 16, 16);
    noStroke();
    ellipse(x, y, size, size);
  }
  
 void circlesMove(){
      x += 20;
    y += 20;
 }
  
  
  void bulBounds(){
      if (x >= 850 || x <= -50 || y >= 850 || y<= -50) {
      x = 400;
      y = 400;
    }
  
  }
  
   public void bound(Circle c) {
    if(c.getX() >= 850 || c.getX() <= -50 || c.getY() >= 850 || c.getY()<= -50) {
       x = 400;
      y = 400;
      
    }
  }
  
  void reset(){
    x = 400;
    y = 400;
  }
  
  public int getX(){
   return x; 
  }
  
  public int getY(){
   return y; 
  }
}
