Bacteria[] bobs;
   
 void setup()  
 {    
   size(500, 500);
   background(255);
   //initialize bacteria variables here  
   bobs = new Bacteria[10];
   for(int i = 0; i< 10; i++) {
     bobs[i] = new Bacteria();
   }
 }  
 
 void draw()  
 {    
   for(int i = 0; i< 10; i++) {
   bobs[i].move();
   bobs[i].show();
   
   }
 }  
 
 
 class Bacteria    
 {    
   //lots of java!  
   int myX , myY, myColor;
 
 
 Bacteria(){
  myX = myY = 250;
  myColor = (int)(Math.random()*255);
 }
   void move(){
   myX = myX + (int)(Math.random()*6)-4;
   myY = myY + (int)(Math.random()*6)-4;
 
 }
 
  void show(){
   fill(myColor, myColor, myColor);
   ellipse(myX, myY, 5, 5);
 }
 }
