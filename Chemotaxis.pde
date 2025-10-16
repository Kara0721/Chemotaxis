Bacteria [] mav = new Bacteria [10];
void setup(){
 size (400, 400); 
  for (int i = 0; i < mav.length; i++){
   mav[i] = new Bacteria();
  }
}
void draw(){
  background (0, 50, 100);
  fill(0, 0, 0);
  line (0, 50, 50, 50);
  line (50, 50, 50, 170);
  line(50, 170, 200, 170);
  line (200, 170, 200, 100);
  line(200,100,350,100);
  line(350,100,350,200);
  line(350, 200, 270, 200);
  line(220, 70, 380, 70);
  line(350,200,380,200);
  line(300,240,300,170);
  line(300,170,320,170);
  line(300, 240, 250, 240);
  line(250, 240, 200, 240);
  line (150, 0, 150, 130);
  for (int i = 0; i < mav.length; i++){
      mav[i].walk();
      mav[i].show();
  }
}
class Bacteria {
  int myX, myY;
  color myC;
  Bacteria (){
   myC = color((int)(Math.random()*170), (int)(Math.random()*150), (int)(Math.random()*256));
   myX = 150;
   myY = 150;
  }
  void walk (){
   if (mouseX > myX)
    myX = myX + (int)(Math.random()*5)-1; 
   else 
    myX = myX + (int)(Math.random()*5)-3;
   if (mouseY > myY)
    myY = myY + (int)(Math.random()*5)-1; 
   else 
    myY = myY + (int)(Math.random()*5)-3;
  }
  void show (){
    fill(myC);
    ellipse (myX, myY, 10, 10);
  }
}
