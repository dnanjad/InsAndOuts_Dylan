          // Dylan Nanjad
  
        mainmenu = true;
        gamestart = false;

     // gameon variables
            float r = random(0, 255);
            float g = random(0, 255);
            float b = random(0, 255);
            float xmove = 4;
            float ymove = 4;
            float xsquare = 0;
            float ysquare = 760;
            float pointx = xsquare + 20;
            float pointy = ysquare + 20;
            float pointrad = 20;
            float ballrad = 20;
       
          void setup() {
            size(800, 800);
            for (int i = 0; i < drops.length; i++) {
            drops[i] = new Drop();  
            }
          }
          
          void gamestart() {
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
              drops[i].kill();
            }
          }
           
           
  //main menu
  
  void mainmenu(){
  size(800, 800);
  background(200,0,200);
  
  textSize(20);
  textSize(60);
  fill(255,255,0);
  text("Not the Best Game", width - 650, 370); 
  text("by Dylan Nanjad", width - 600, 420); 
  text("Click to Start", width - 570, height-100);
  if (mousePressed == true) {

            
            mainmenu = false;
            gamestart = true;
  }
  } 
           
