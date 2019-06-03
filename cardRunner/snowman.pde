class Snowman {

  void show() {
    //body
    fill(255, 255, 255);
    ellipse(800, 510, 100, 100);
    ellipse(800, 435, 85, 85);
    ellipse(800, 370, 70, 70);
    //eyes
    fill(0, 0, 0);
    ellipse(790, 360, 10, 10);
    ellipse(810, 360, 10, 10);
    //nose
    fill(255, 98, 13); 
    triangle(800, 375, 800, 370, 820, 375);
  }
  void smile() {
    fill(0);
    ellipse(790-10, 380+5, 5, 5);
    ellipse(790, 385+5, 5, 5);
    ellipse(790+10, 387+5, 5, 5);
    ellipse(790+20, 385+5, 5, 5);
    ellipse(790+30, 380+5, 5, 5);
  }

  void ground() {
    fill(255);
    ellipse(450, 560, 1010, 200);
  }
}
