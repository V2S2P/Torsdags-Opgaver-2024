int numberOfCircles;
int circleSize;
int red, green, blue;
int x, y;
int counter = 0;
int rowCounter = 0;
void setup(){
  size(1000,1000);
   
   numberOfCircles = 100;
   circleSize = width/numberOfCircles;
   
   ellipseMode(CORNER);
   
   red = 255;
   green = 255;
   blue = 255;
}

void draw(){
  x = circleSize*counter;
  y = circleSize*rowCounter;
  
  
   if(mouseX >= x && mouseX < x + circleSize && mouseY >= y + circleSize){
    fill(255,0,0);
  }else{
    fill(red,green,blue);
  }
  
  
  //fill(red,green,blue);
  ellipse(x,y,circleSize,circleSize);
  
  if(frameCount % numberOfCircles == 0){
    counter = 0;
  }else{
    counter += 1;
  }
  if(counter == 0){
    rowCounter += 1;
  }
  frameRate(1000);
}
