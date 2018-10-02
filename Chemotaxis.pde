 Bacteria[] one = new Bacteria[30];  
 void setup()   
 {     
 	size(200, 200);
 	for(int i = 0; i < one.length; i++){
 		one[i] = new Bacteria();
 	}
 	frameRate(4);
 }   
 void draw()   
 {  
 	for(int i = 0; i < one.length; i++){
	 	one[i].move();
	 	one[i].show();
	}
 }  
 class Bacteria{     
 	int myX, myY;
 	Bacteria(){
 		myX = myY = 100;
 	}  
 	void move(){
 		myX = myX + (int)(Math.random()*7)-3;
 		myY = myY + (int)(Math.random()*7)-3;
 	}
 	void show(){
 		background(192);
 		ellipse(myX, myY, 10, 10);
 	}
 }   