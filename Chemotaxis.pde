Bacteria [] mav;
void setup(){
 size (300, 300); 
 mav = new Bacteria[50];
  for (int i = 0; i < mav.length; i++){
   mav[i] = new Bacteria();
  }
}
void draw(){
  background (0, 50, 100);
  for (int i = 0; i < mav.length; i++){
      mav[i].walk();
      mav[i].show();
  }
}
class Bacteria {
  int myX, myY;
  Bacteria (){
   myX = 150;
   myY= 150;
  }
  void walk (){
   myX = myX + (int)(Math.random()*5)-2; 
   myY = myY + (int)(Math.random()*5)-2; 
  }
  void show (){
    ellipse (myX, myY, 20, 20);
  }
}
