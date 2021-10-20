int xc,yc,rc;

class protacombate{
protacombate(int xb,int yb,int rb){xc=xb;yc=yb;rc=rb;}
boolean piso=true,disparo=false;
//-----------------------controlescombate----------------------------//
void btcontrol() {
if (keyPressed){
  if(key==' '||key=='x'||key=='X'){disparo=true;}
  if((key=='w'||key=='W') && piso && yc>=130){yc=yc-150;}
  if((key=='d'||key=='D') && xc<=630 ){xc=xc+10;}
  if((key=='a'||key=='A') && xc>=50){xc=xc-10;}
  if((key=='s'||key=='S') && xc>=40){yc=yc+10;}
  }//keypessed
}//void control ya cogio esto

void dibujo() {circle(xc,yc,30);textSize(50);
  /* fill(#FFFFFF);
  text(mouseX,0,150);
  text(mouseY,0,200); 
  text(xc,0,250);
  text(yc,0,300);
*/
}
void gravedad(){
if(yc>=490){yc+=0;piso=true;}
else if (xc>=220 && xc<=310 && yc>=390 &&yc<=400){yc+=0;piso=true;}//primeraplataforma
else if (xc>=80 && xc<=190 && yc>=320 &&yc<=330){yc+=0;piso=true;}
else if (xc>=0 && xc<=80 && yc>=260 &&yc<=270){yc+=0;piso=true;}
else if (xc>=160 && xc<=270 && yc>=226 &&yc<=235){yc+=0;piso=true;}
else{yc+=9.8;piso=false;}
}//gravedad completa
int xb=0,yb=0,speed=60,xp=500,yp=450,vida=0;
void disparo(){
if(disparo){
pushMatrix();
translate(xc+30,yc-20);
circle(xb,yb,20);xb=xb+speed;
popMatrix();
if (dist(xb,yb,xp,yp)<=dist(xp,yp,xp+30,yp+60)){vida-=2;}
}else {xb=0;}
if (xb>=200){disparo=false;}
if (xb>xp && xb<xp+30){vida-=2;} //error en hitbox 
}//void disparo
//--------------------------------hitbox
void hitbox(){
rect(xp,yp,30,60);
fill(#03FF3B-vida*5);
rect(50,570,300+vida,20);
}


}//cierra la clase 
