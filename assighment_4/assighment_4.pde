//variablesariables picture
PImage turtle;
PImage hare;
//Variables to make it move
int turMov;
int harMov;
//Variables text
int textTur;
int textHare;
//Variable to make text display 
boolean textDis = false;
//Method setup to declare images and background
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
  //  hare and turtle images
  image(turtle,20,turMov,70,70);
  image(hare,120,harMov,50,50);
   // text display and stop the game
   if (textDis == true){
      stop();
    }
  //if turtle wins text will appear
  if (textTur >= 5){
    text("Turtle Wins!",15,350);
    textSize(30);
    fill(0);   
    textDis = true;
  if hare wins text will appear
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
  // makes turtle move
  if(key =='a' || key == 'A'){
    turMov += 10;
  }
  //makes hare move
  if(key == 'l' || key == 'L'){
    harMov += 10;
  }
    
//when turtle and hare reach the end this triggers the text to appear
  if(turMov >= 700){
    textTur = 5;
    
  }
   else if (harMov >= 700){
    textHare = 5;
  }
}
