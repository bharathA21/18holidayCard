PFont myFont;
PImage p;
float r = 0;
float g = 0;
float w =255;
Moon m = new Moon();
Snowflake [] s; 
Snowflake[] sw;
Snowman steve = new Snowman();

void setup() {

  size(900, 600);
  background(42, 70, 130);
  
  p = loadImage("cabin.png");
  myFont = createFont("Jokerman", 32);


  s = new Snowflake[750];
  sw = new Snowflake[750];
  for (int i = 0; i< s.length; i++) 
  {
    s[i] = new Snowflake();
  }
  for (int i = 0; i< sw.length; i++) 
  {
    sw[i] = new Snowflake();
  }
}

void draw() {
  background(42, 70, 130);

  steve.ground();
  stroke(10);
  steve.show(); 
  steve.smile();   

  for (int i = 0; i< s.length; i++) 
  {
    s[i].show();
    s[i].move();
    s[i].edge();
  }
  p.resize(500, 400);
  image(p, 60, 190);

  m.show();
  m.cover();


  for (int i = 0; i< sw.length; i++) 
  {
    sw[i].show();
    sw[i].move();
    sw[i].edge();
  
  String s= "HAPPY HOLIDAYS!!";
    float h= width/4-25;
fill(random(255)+30,random(255)+30,random(255)+30);
        
    textFont(myFont);
    textSize(50);
        text(s, h, 125);

    
    //for(int j=0; j<s.length();j++){
    //  char n = s.charAt(j);

    //text(s, h, 125);
    //h = h+ textWidth(n);
  }
  // textFont(myFont );
  //text(s,width/4,80);






  }
  
  class Moon {
  float c= 710;
  void show() {
    fill(245, 183, 77);
    ellipse(825, 80, 75, 75);
  }
  void cover() {
    //stroke(30);

    for (int i = 0; i<10; i++) {
      fill(42, 70, 130);
      ellipse(c, 80, 75, 75);
      c=c+.05;
      if (c>=width) {
        c=710;
      }
    }
  }
}

interface Snow {
  void move();
  void show();
}

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



  
  
  
  
  
