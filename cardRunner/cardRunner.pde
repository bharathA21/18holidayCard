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
