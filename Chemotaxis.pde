Bacteria [] mav = new Bacteria [100];
void setup() {
  size (400, 400); 
  for (int i = 0; i < mav.length; i++) {
    mav[i] = new Bacteria();
  }
}
void draw() {
  //System.out.println(mouseX);
  //System.out.println(mouseY);
  background (0, 50, 100);
  
  for (int i = 0; i < mav.length; i++) {
    mav[i].walk();
    mav[i].show();
  }
}
void mousePressed(){
redraw();
}
class Bacteria {
  int myX, myY;
  color myC;
  Bacteria () {
    myX = 150;
    myY = 150;
  }
  void walk () {
    if (mouseX > myX)
      myX = myX + (int)(Math.random()*5)-1; 
    else 
    myX = myX + (int)(Math.random()*5)-3;
    if (mouseY > myY)
      myY = myY + (int)(Math.random()*5)-1; 
    else 
    myY = myY + (int)(Math.random()*5)-3;
  }
  void show () {
    fill((int)(Math.random()*170), (int)(Math.random()*150), (int)(Math.random()*256));
    ellipse (myX, myY, 20, 20);
  }
}
