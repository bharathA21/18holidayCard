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
