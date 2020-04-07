        // Dylan Nanjad

// first state variables
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
          float x = random(100, width);
          float y = random(-10, 0);
       
       
       
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
  
  }
        //rain drop array
        Drop[] drops = new Drop[40];
        
        
        void setup() {
          size(800, 800);
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
          
          if(dist(pointx, pointy, x, y) < ballrad + pointrad) {
            xsquare = 0;
            ysquare = 760;
          }
          
          //rain drops
          for (int i = 0; i < drops.length; i++) {
            drops[i].show();
            drops[i].fall();
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
} 
         
