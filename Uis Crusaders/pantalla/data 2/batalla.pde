import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//--------------------------------sprite--------------------
Sprite porras;
Sprite protabt1;
StopWatch reloj;
float tiempo=0;
//

PImage fondobatalla;
PImage protabt;
int xpt=0,ypt=0;

personajebt protaop;
enemigo porrasia;



void setup(){
size(700,500);
//_______-______________________________________________________sprites____________________________________________-_---_----_---_--___---_
porras=new Sprite(this,"porrast.png",5,1,0);
protabt1=new Sprite(this,"protabt.png",1,1,0);
reloj=new StopWatch();//el que cuenta el tiempo para los sprites
//-----------------------------------------------------imagenes-------------------------------------------------------------------------------
fondobatalla = loadImage("fondobt.png");
protabt =loadImage("protabt.png");

protaop= new personajebt(30,0);
porrasia= new enemigo(580,370);
}

void draw(){
  //contador de sprites
  tiempo=(float)reloj.getElapsedTime();
  S4P.updateSprites(tiempo);
//----------------------------------------------------fondo-------------------------------------------------
  pushMatrix();
  translate(350,210);
  image(fondobatalla,0,0,700,500);
  popMatrix();
//---------------------------------------------------------------------

 pushMatrix();
  protaop.btcontrol();
  protaop.pelea();
  protaop.gravedad();
  protaop.disparo();
  protaop.barras();
 popMatrix(); 
  porrasia.ia();
  
  
  rect(xene,yene,100,80);
  
}
