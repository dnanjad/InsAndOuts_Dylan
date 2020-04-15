  //dodgeballs
    
    class Drop {
      float x = random(100, width);
      float y = random(-10, 0);
      float yspeed = random(1, 8);
      float r = random(0, 255);
      float g = random(0, 255);
      float b = random(0, 255);
    
      void fall() {
        y = y + yspeed;
        
       //resets balls when it gets to the bottom
        if (y > 800) {
          y = random(-200, -100);
          yspeed = random(1, 8);
        }
    }
    
    void show() {
      fill(r, g, b);
      ellipse(x, y + yspeed, 40, 40);
    }
    
    void kill() {
              if(dist(pointx, pointy, x, y) < ballrad + pointrad) {
              xsquare = 0;
              ysquare = 760;
            }
    }
    }
          //rain drop array
          Drop[] drops = new Drop[30];
