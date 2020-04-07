// Dylan Nanjad
// Signals
// Move the mouse around the canvas and click or hold the mouse button

int d = 10;
int speed = 30;
//colors
float r = 0;
float g = 0;

float v1 = random(255);
float v2 = random(255);
float v3 = random(255);

//rain drop array
Drop[] drops = new Drop[500];

//second drop set
UpDrop[] updrops = new UpDrop[500];

void setup() {
  size(600, 600);
  background(0);
  noFill();
  for (int i = 0; i < drops.length; i++) {
  drops[i] = new Drop();  
  }
  for (int i = 0; i < updrops.length; i++) {
    updrops[i] = new UpDrop();
  }
}

void draw() {
  r = map(mouseX, 0, 600, 0, 255);
  g = map(mouseY, 0, 600, 0, 255);
  background(0, r, g);
  //background(0);
  
  //rain drops
  if (mouseY < 300) {
    for (int i = 0; i < drops.length; i++) {
  drops[i].show();
  drops[i].fall();
  }
  }
  
   //updrops
  if (mouseY > 300) {
    for (int i = 0; i < drops.length; i++) {
      updrops[i].show2();
      updrops[i].rise();
    }
  }
  
  //shapes
  stroke(100, 200, 150);
  strokeWeight(5);
  //bottom shape
  triangle(300, 300, 400, 400, 200, 400);
  quad(200, 400, 400, 400, 350, 450, 250, 450);
  line(250, 450, 300, 300);
  line(300, 300, 350, 450);
  //top shape
  triangle(300, 300, 200, 200, 400, 200);
  quad(200, 200, 250, 150, 350, 150, 400, 200);
  line(250, 150, 300, 300);
  line(350, 150, 300, 300);

}
