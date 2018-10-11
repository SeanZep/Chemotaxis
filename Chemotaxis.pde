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
	 	if(one[i].state == false){
	 		one[i].move();
	 		one[i].show();
	 	}else{
	 		one[i].move2();
	 		one[i].show2();
	 	}
	}
 }
 void mousePressed(){
 	for(int i = 0; i < one.length; i++){
 		one[i] = new Bacteria();
 	}
 }  
 class Bacteria{     
 	int myX, myY, count, x2, y2;
 	boolean state;
 	Bacteria(){
 		myX = myY = 100;
 		x2 = (int)(Math.random()*5)-2;
 		y2 = (int)(Math.random()*5)-2;
 	}  
 	void move(){
 		if(mouseX>myX){
 			myX = myX + (int)(Math.random()*5)-1;
 		}else if(mouseX<myX){
 			myX = myX + (int)(Math.random()*5)-3;
 		}
 		if(mouseY>myY){
 			myY = myY + (int)(Math.random()*5)-1;
 		}else if(mouseY<myY){
 			myY = myY + (int)(Math.random()*5)-3;
 		}
 	}
 	void show(){
 		if(abs(mouseX - myX) < 10 && abs(mouseY - myY) < 10){
			fill(255, 0, 0);
			count++;
		}else{
			fill(255, 255, 255);
		}
 		ellipse(myX, myY, 10, 10);
 		if(count>120){
 			state = true;
 		}
 	}
 	void move2(){
 		myX = myX+x2;
 		myY = myY+y2;
 	}
 	void show2(){
 		ellipse(myX, myY, 10, 10);
 		fill(255, 0, 0);
 	}
 }
