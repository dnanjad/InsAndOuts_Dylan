      class pillar{
        float opening;
        int xPos;
        boolean passed = false;
       pillar(int i){
        xPos = 100+(i*200);  //sets distance between three pillars
        opening = random(600)+100;  //generates number [100, 700]
       }
       void drawPillar(){
         line(xPos,0,xPos,opening-100);  //creates top line
         line(xPos,opening+100,xPos,800);  //creates bottom line
       }
       void checkPosition(){  //if pillar passes the left side of canvas, reset
        if(xPos<0){
         xPos+=(200*3);
         opening = random(600)+100;
         passed=false;
        } 
        if(xPos<250&&passed==false){  //if pillar passes location of circle, score++
         passed=true;
         score++; 
        }
       }
  
      }
