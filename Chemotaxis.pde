 Bacteria[] one = new Bacteria[5];  
 void setup()   
 {     
 	size(200, 200);
 	for(int i = 0; i < one.length; i++){
 		one[i] = new Bacteria();
 	}
 }   
 void draw()   
 { 
 	background(192); 
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
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}
 	void show(){
 		ellipse(myX, myY, 10, 10);
 	}
}
void setColor(){
	int g = 255;
	int b = 255; 
	if(mouseX == myX && mouseY == myY){
		
	}
}   