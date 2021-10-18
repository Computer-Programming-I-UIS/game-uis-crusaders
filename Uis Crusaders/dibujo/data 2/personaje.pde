

class personajebt{
personajebt(int xb,int yb){xpt=xb;ypt=yb;}//constructor 

boolean piso=true,disparo=false;
//---------------------------------------------------------------------------------
void btcontrol() {
if (keyPressed){
  if(key==' '||key=='x'||key=='X'){disparo=true;}
  if((key=='w'||key=='W') && piso){ypt=ypt-110;}
  if((key=='d'||key=='D') && xpt<=630 ){xpt=xpt+10;}
  if((key=='a'||key=='A') && xpt>=40){xpt=xpt-10;}
  }//keypessed
}//void control
//-------------------------------------------------------------------------------
void pelea() {//PELEA PORRAS
/*
pushMatrix();
//translate(350,250);
image(fondobatalla,0,0,700,500);
popMatrix();
*/
pushMatrix();
/////////////////////////aqui va el sprite prota
translate(xpt,ypt);
scale(0.2);
protabt1.setFrameSequence(0,6,13);
protabt1.draw();
popMatrix();/////////////////////

}
//----------------------------------------------------------------------------------------
void gravedad(){
if(ypt>=380){ypt+=0;piso=true;}
else if (xpt>=150 && xpt<=280 && ypt>=280 &&ypt<=290){ypt+=0;piso=true;}
else if (xpt>=10 && xpt<=160 && ypt>=220 &&ypt<=230){ypt+=0;piso=true;}
else if (xpt>=-10 && xpt<=60 && ypt>=155 &&ypt<=165){ypt+=0;piso=true;}
else if (xpt>=110 && xpt<=270 && ypt>=120 &&ypt<=130){ypt+=0;piso=true;}
else{ypt+=5;piso=false;}
}
//--------------------------------------------------------------------------disparo---------------------------------------------------------------------
int xb=0,yb=0,speed=60;
void disparo(){
if(disparo){
pushMatrix();
translate(xpt+30,ypt);
circle(xb,yb,20);xb=xb+speed;
popMatrix();
}else{xb=0;}
if (xb>300){disparo=false;}
}//void disparo
//--------------------------------------------------------------------------impacto---------------------------------------------------------------------
int dñ=0,vida=700;
void barras(){
fill(0);
rect(0,460,700,500);
fill(#FFFFFF);
textSize(20);
text("Vida Raspo:",10,485);
//////////////////////////////////////////////////////////////////////////////barra de vida //////////////////////////////////////////////////////////
if(xb>=xene-30 && xb<=xene+30 && yb>=yene-30 && yb<=yene+60){dñ+=10;}
fill(#00FF2C);
rect(110,460,vida-dñ,500);
textSize(50);
  fill(#FFFFFF);
  text(mouseX,100,150);
  text(mouseY,100,200);
  text(xb,300,150);
  text(yb,300,200);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}

}//cierra el personaje 
