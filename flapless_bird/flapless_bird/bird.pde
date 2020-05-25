      class bird{
        float xPos, yPos;
      bird(){                  //sets position of "bird"
      xPos = 250;
      yPos = 400;
      }
      void drawBird(){
        
        stroke(255);
        noFill();
        strokeWeight(2);
        ellipse(xPos, yPos, 20, 20);
      }
      
      void move(){
       for(int i = 0;i<3;i++){
        p[i].xPos -= pillarSpeed;
       }
      }
      void checkCollisions(){ //checks if bird goes past bottom of canvas
       if(yPos>1000){
        end=false;
       }
      for(int i = 0;i<3;i++){        //checks if bird center passes through the opening of the pillars
      if((xPos < p[i].xPos + 10 && xPos > p[i].xPos - 10) && (yPos < p[i].opening - 100 || yPos > p[i].opening + 100)){
       end = false; 
      }
      }
      } 
      }
