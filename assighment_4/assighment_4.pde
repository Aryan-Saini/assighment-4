// picture variables
PImage turtle;
PImage hare;
// varible to make it move
int turMov;
int harMov;
// text varribles
int textTur;
int textHare;
// text display value
boolean textDis = false;
// setup
void setup(){
  size(200,700);
// image 
  turtle = loadImage("turtle.jpg");
  hare = loadImage("hare.jpg");
}
// draw
void draw(){
//background
  background(255);
//  hare and turtle
  image(turtle,20,turMov,70,70);
  image(hare,120,harMov,50,50);
   // text display and stop the game
   if (textDis == true){
      stop();
    }
// text appear
  if (textTur >= 5){
    text("Turtle Wins!",15,350);
    textSize(30);
    fill(0);   
    textDis = true;
   
  }
  else if(textHare >= 5){
    text("Hare Wins!",15,350);
    textSize(30);
    fill(0);
      textDis = true;
  }
}
// key pressed
void keyPressed(){
  // makes turtle and hare move
  if(key =='a' || key == 'A'){
    turMov += 10;
  }
  if(key == 'l' || key == 'L'){
    harMov += 10;
  }
    
//when turtle and hare reach the end 
  if(turMov >= 700){
    textTur = 5;
    
  }
   else if (harMov >= 700){
    textHare = 5;
  }
}
