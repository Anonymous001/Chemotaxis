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
   float myX, myY, a, b;
   Bacteria()
   {
     myX = 250;
     myY = 250;
   }
   void walk()
   {
     if(mousePressed){
         ellipse(mouseX,mouseY,10,10);
         if(mouseX < myX)
         {
           a = 3.5;
         }
         else
         {
           a = 2.5;
         }
         if(mouseY < myY)
         {
           b = 3.5;
         }
         else
         {
           b = 2.5;
         }
         myX = myX+(int)(Math.random()*7)-a;
         myY = myY+(int)(Math.random()*7)-b;
     }
     else{
         myX = myX+(int)(Math.random()*7)-3;
         myY = myY+(int)(Math.random()*7)-3;
       }
   }
   void show()
   {
     fill(255);
     ellipse(myX, myY, 20, 20);
   }
 }    
