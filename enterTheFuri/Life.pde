public class Life {
  float lifeX, lifeY;

  public Life() {
    lifeX =(int)(Math.random() * 800);
    lifeY =(int)(Math.random() * 800);
  }

  void showLife() {

    fill(255);
    rect(lifeX, lifeY, 20, 20);
  }

  public float getLifeX() {
    return lifeX;
  }

  public float getLifeY() {
    return lifeY;
  }
  
  void hideLife(){
    lifeX =1000;
    lifeY = 1000;
  }
  
  void resetLife(){
        lifeX =(int)(Math.random() * 800);
    lifeY =(int)(Math.random() * 800);
  }
}
