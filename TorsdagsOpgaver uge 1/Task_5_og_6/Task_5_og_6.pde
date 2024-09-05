/*
The code in this sketch will not compile, as it referes to varables which have not yet been declared 
Please complete task 5 to get this to compile.
*/
float circleSize;
int numberOfCircles;
float x, y;
int counter = 0;
int rowCounter = 0;
int red, green, blue;
void setup(){
   size(400,400);
  
   numberOfCircles = 40;
   circleSize = width/numberOfCircles;
   ellipseMode(CORNER);
  
  red = 255;
  green = 255;
  blue = 255;
}
void draw(){
  x = circleSize*counter;
  y = circleSize*rowCounter;
 
  
  fill(red,green,blue);
  ellipse(x,y,circleSize,circleSize);
  
  // Explaining conditional assignments. 
  // First part before the ?-mark, is a conditional. 
  // If this is true, the value after the ?-mark will be assigned. 
  // If not, the last value will.
  //counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  //rowCounter =  counter==0 ? rowCounter+1:rowCounter;
  if(frameCount % numberOfCircles == 0){
    counter = 0;
  }else{
    counter += 1;
  }
  if(counter == 0){
    rowCounter += 1;
  }
  println("x-position: " + x,"y-position: " + y);

  
  /*if(counter == 0){
    red = int(random(255));
    blue = int(random(255));
    green = int(random(255));
  }
  */
  frameRate(120);
  
  
  // Explaining the modulus operator
  // Modulus is what is left when you divide one int with another int.
  // 1 % 3 = 1 (3 people can't share 1 apple without cutting it, so 1 apple is left)
  // 2 % 3 = 2
  // 3 % 3 = 0
 
  //Add the code for 6.c here
  red = counter==0 ? (int)random(255):red;
  green = counter==0 ? (int)random(255):green;
  blue = counter==0 ? (int)random(255):blue;
}
