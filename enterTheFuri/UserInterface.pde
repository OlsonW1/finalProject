public class UserInterface {

  public UserInterface() {
  }

  void pause() {
    if (key == 'P' || key == 'p') {
      fill(255);
      text("pause", 730, 20);
      noLoop();
    }
  }
  
  public int timer(){
     int s = millis() / 1000;
     fill(255);
     text(s, 20, 20);
     return s;
  }
  
}
