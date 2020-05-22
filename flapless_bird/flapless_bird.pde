 //Flappy Code
    
    import processing.serial.*; //import Serial Library
    
    Serial myPort; //create object from Serial class
    
    int val = 0;
    bird b = new bird();
    pillar[] p = new pillar[3];
    boolean end=false;
    boolean intro=true;
    int score=0;
    void setup(){
      size(500,800);
      for(int i = 0;i<3;i++){
      p[i]=new pillar(i);
      }
      
      
     printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
    }
    void draw(){
      background(0);
      if(end){
      b.move();
      }
      b.drawBird();
      b.checkCollisions();
      for(int i = 0;i<3;i++){
      p[i].drawPillar();
      p[i].checkPosition();
      }
      fill(0);
      stroke(255);
      textSize(32);
      if(end){
      rect(20,20,100,50);
      fill(255);
      text(score,30,58);
      }else{
      rect(150,height/2 - 55, 200, 50);
      rect(150, height/2, 200, 50);
      fill(255);
      if(intro){
        text("Flappy Code", 155, height/2 - 20);
        text("Click to Play",155, height/2 + 40);
      }else{
      text("game over", 170, height/2 - 20);
      text("score",200, height/2 + 30);
      text(score,280,240);
      }
      }
    }


    void reset(){
     end=true;
     score=0;
     b.yPos=400;
     for(int i = 0;i<3;i++){
      p[i].xPos+=550;
      p[i].passed = false;
     }
    }

void keyPressed() {
if (keyPressed == true) {
  if (keyCode == UP) {
    b.up();
    intro = false;
  }  else if (keyCode == DOWN) {
    b.down();
  } else if (end == false) {
      reset();
    }
}
}
