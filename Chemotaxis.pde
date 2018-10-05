 Bacteria[] one = new Bacteria[100];  
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
 		if(abs(mouseX - myX) < 10 && abs(mouseY - myY) < 10){
			fill(255, 0, 0);
		}else{
			fill(255, 255, 255);
		}
 		ellipse(myX, myY, 10, 10);
 	}
 }