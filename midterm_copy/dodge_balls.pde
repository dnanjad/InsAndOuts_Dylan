  class Drop {
    float x = random(100, width);
    float y = random(-10, 0);
    float yspeed = random(1, 8);
    float r = random(0, 255);
    float g = random(0, 255);
    float b = random(0, 255);
   // float len = random(10, 20);
  
    void fall() {
      y = y + yspeed;
      
     //resets rain when it gets to the bottom
      if (y > 800) {
        y = random(-200, -100);
        yspeed = random(1, 8);
      }
  }
  
  void show() {
    fill(r, g, b);
    ellipse(x, y + yspeed, 40, 40);
  }
  
  }
