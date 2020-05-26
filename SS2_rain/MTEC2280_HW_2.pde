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


void setup() {
  size(600, 600);
  background(0);
  noFill();
}

void draw() {
  r = map(mouseX, 0, 600, 0, 255);
  g = map(mouseY, 0, 600, 0, 255);
  background(0, r, g);
  //background(0);
  

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

  if (mousePressed) {
    float v1 = random(255);
    float v2 = random(255);
    float v3 = random(255);
    stroke(v1, v2, v3);
    frameRate(20);
    strokeWeight(4);
    //bottom shape and center
    ellipse(300, 300, d, d);
    ellipse(400, 400, d, d);
    ellipse(200, 400, d, d);
    ellipse(350, 450, d, d);
    ellipse(250, 450, d, d);
    ellipse(200, 200, d, d);
    ellipse(250, 150, d, d);
    ellipse(350, 150, d, d);
    ellipse(400, 200, d, d);
    d += speed;
  }
  if (d > 1200) {
    speed = -30;
  }
  if (d < 10) {
    speed = 30;
  }
}
