import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

//imagenes
PImage fondo1;
PImage run1;
//personaje 
int x,y,r;
int xn,yn;//npc
//clase p,npc,en
personaje prota;
npc npc1;

void setup(){
size (800,600);
fondo1 = loadImage("R.png");
run1 = loadImage("run1.JPG");
prota= new personaje (100,122,30);
npc1= new npc(500,600,20);
}//fin void setup

void draw(){
  imageMode (CENTER);//fondo,menu de opciones 
  background(0);
  
  pushMatrix();
//  translate(128,10);
 // fondo1.resize(2500,910);
  image(fondo1,600,400);
  popMatrix();
  
  //personaje
  prota.move();
  prota.control();
  
 
}//fin del draw 
