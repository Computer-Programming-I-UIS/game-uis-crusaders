import sprites.*;
import sprites.maths.*;
import sprites.utils.*;
//sprites
Sprite prota1;//crea el sprite
StopWatch reloj;
float tiempo=0;
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
//sprite
prota1=new Sprite(this,"prota.png",4,4,0);//carga el sprite

prota1.setFrameSequence(0,15,0.1);

reloj=new StopWatch();//el que cuenta el tiempo para los sprites 




//imagenes
fondo1 = loadImage("R.png");
run1 = loadImage("run1.JPG");
//objetos
prota= new personaje (100,122,30);
npc1= new npc(500,600,20);
}//fin void setup

void draw(){
  tiempo=(float)reloj.getElapsedTime();
  S4P.updateSprites(tiempo);
  
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
  //sprite
 pushMatrix();
 translate(x,y);
 scale(0.016);
 prota1.draw();
 popMatrix();
 
}//fin del draw 
