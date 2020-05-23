//Flappy Code

import processing.serial.*; //import Serial Library
Serial myPort; //create object from Serial class
int val = 0;


bird b = new bird();
pillar[] p = new pillar[3];
float pillarSpeed;
boolean end = false;
boolean intro = true;
int score=0;


void setup() {
  size(500, 800);
  for (int i = 0; i<3; i++) {
    p[i] = new pillar(i);
  }

printArray(Serial.list());
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}
void draw() {
  if (myPort.available() > 0) {
    val = myPort.read();
  }
  println(val);
  
  if (val < 130) {
    b.yPos = map(val, 0, 14, 0, 800);
  } else {
    pillarSpeed = map(val, 128, 255, 0, 5);
  }
  background(0);
  if (end) {
    b.move();
  }
  b.drawBird();
  b.checkCollisions();
  for (int i = 0; i<3; i++) {
    p[i].drawPillar();
    p[i].checkPosition();
  }
  fill(0);
  stroke(255);
  textSize(32);
  if (end) {
    rect(20, 20, 100, 50);
    fill(255);
    text(score, 30, 58);
  } else {
    rect(150, height/2 - 55, 200, 50);
    rect(150, height/2, 200, 50);
    fill(255);
    if (intro) {
      text("Flapless", 195, height/2 - 20);
      text("Click to Play", 155, height/2 + 40);
    } else {
      text("game over", 170, height/2 - 20);
      text("score", 200, height/2 + 30);
      text(score, 290, height/2 + 30);
    }
  }
}


void reset() {
  end=true;
  score=0;
  b.yPos=400;
  for (int i = 0; i<3; i++) {
    p[i].xPos+=550;
    p[i].passed = false;
  }
}

void mousePressed() {
  intro = false;
  if (end == false) {
    reset();
  }
}
