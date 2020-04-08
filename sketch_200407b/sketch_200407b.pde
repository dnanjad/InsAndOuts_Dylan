void setup() {
  size(800);
  background(0);
  for (int i = 0; i < drops.length; i = i + 30) {
    drops[i] = new Drop;
  }
}

void draw() {
background(0);
}

  class Drop {
    float x = random(100, width);
    float y = random(-10, 0);
    float yspeed = 3;
    float r = random(0, 255);
    float g = random(0, 255);
    float b = random(0, 255);
  
    void fall() {
      y = y + yspeed;
      
     //reverses direction when it gets to the bottom
      if (y > 800) {
        yspeed = -yspeed;
      } else if (y < 0) {
        yspeed = 3;
      }
    }
    
      void show() {
    fill(255);
    ellipse(x, y + yspeed, 30, 30);
  }
  }
