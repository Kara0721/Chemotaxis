Bacteria [] mav;
void setup(){
 size (300, 300); 
 mav = new Bacteria[10];
  for (int i = 0; i < mav.length; i++){
   mav[i] = new Bacteria();
  }
}
void draw(){
  for (int i = 0; i < mav.length; i++){
      mav[i].walk();
      mav[i].show();
  }
}
class Bacteria {
  int myX, myY;
  Bacteria (){
   myX = 0;
   myY= 0;
  }
  void walk (){
   myX = myX + (int)(Math.random()*300); 
   myY = myY + (int)(Math.random()*300); 
  }
  void show (){
    ellipse (myX, myY, 20, 20);
  }
}
