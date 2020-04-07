        // Dylan Nanjad
      
          float r = random(0, 255);
          float g = random(0, 255);
          float b = random(0, 255);
          float xmove = 4;
          float ymove = 4;
          float xsquare = 0;
          float ysquare = 760;
          float pointx = xsquare + 20;
          float pointy = ysquare + 20;
        //rain drop array
        Drop[] drops = new Drop[40];
        
        
        void setup() {
          size(800, 800);
          background(0);
          noFill();
          for (int i = 0; i < drops.length; i++) {
          drops[i] = new Drop();  
          }
        }
        
        void draw() {
          background(0);
          fill(r, g, b);
          rect(xsquare, ysquare, 40, 40);
          point(pointx, pointy);
          
          if (keyPressed == true) {
            if (ysquare > 0 && keyCode == UP) {
              ysquare = ysquare - ymove;
              pointy = pointy - ymove;
            } else if (ysquare < height - 40 && keyCode == DOWN) {
            ysquare = ysquare + ymove;
            pointy = pointy + ymove;
          } else if (xsquare > 0 && keyCode == LEFT) {
            xsquare = xsquare - xmove;
            pointx = pointx - xmove;
          } else if (xsquare < width-40 && keyCode == RIGHT) {
              xsquare = xsquare + xmove;
              pointx = pointx + xmove;
            }
          }
          
          //rain drops
          for (int i = 0; i < drops.length; i++) {
            drops[i].show();
            drops[i].fall();
          }
        }
         
