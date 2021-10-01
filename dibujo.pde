PImage fondo1;
PImage run1;
int x=0,y=0,r=30;





void setup(){
size (800,700);
fondo1 = loadImage("R.png");
run1 = loadImage("run1.JPG");
}//fin void setup

void draw(){

  pushMatrix();/////////////////////////////////////////////////////////
  imageMode (CENTER);
  
  translate(10+x,140+y);
  background(0);
  image(fondo1,0,0);
 /* puntos de pantalla 
  textSize(30);
  text(mouseX-400,-400,-320);
  text(mouseY-350,-330,-320); */
  popMatrix();////////////////////////////////////////////////
  
  ////////////cordenadas personaje///////////////////////////77
  translate(400,350);
   fill(0);
   circle(0,0,r);
  ///////////////////////////////////////
  
  
  
  
}//fin void draw 
