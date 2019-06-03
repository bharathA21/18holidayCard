class Snowflake implements Snow {
  double x = Math.random()*900;
  double y = Math.random()*600;
  void show() { 
    fill(255, 255, 255);
    noStroke();
    ellipse((int)x, (int)y, 5, 5);
  }
  void move() {
    x = x + (int)(Math.random()*2)+2;  
    y = y + (int)(Math.random()*1)+1;
  }
  public void edge() {
    if (y > height) {
      y=0;
    }
    if (x>width) {
      x = Math.random()*0+1;
    }
  }
}
