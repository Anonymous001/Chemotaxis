 Bacteria bob;
 //declare bacteria variables here   
 void setup()   
 {     
   //initialize bacteria variables here
   size(500,500);
   bob = new Bacteria();
 }   
 void draw()   
 {    
   //move and show the bacteria
   background(0);  
   bob.walk();
   bob.show();
 }  
 class Bacteria    
 {     
   //lots of java!
   int myX, myY;
   Bacteria()
   {
     myX = 250;
     myY = 250;
   }
   void walk()
   {
     myX = myX+(int)(Math.random()*7)-3;
     myY = myY+(int)(Math.random()*7)-3;
   }
   void show()
   {
     fill(255);
     ellipse(myX, myY, 20, 20);
   }
 }    
