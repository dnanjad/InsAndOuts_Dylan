class UpDrop {
  float x = random(width);
  float y = random(800, 700);
  float yspeed = random(4, 10);
  float len = random(10, 20);

  void rise() {
    y = y - yspeed;
    
    if (y < 300) {
      y = random(800, 700);
      yspeed = random(4, 10);
    }
  //  if (mousePressed) {
    //  yspeed = random (4, 10);
    //}
}

void show2() {
  stroke(138, 43, 226);
  line(x, y, x, y+len);
}

}
