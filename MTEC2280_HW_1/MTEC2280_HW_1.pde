void setup() {
  size(600, 600);
  background(0);
  noFill();
}

void draw() {
background(0);
  //background(0);
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
