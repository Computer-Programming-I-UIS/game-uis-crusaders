class npc{
int xn,yn,rn; boolean preguntar=false;
npc(int xp,int yp, int rp){
  xn=xp; yn=yp;rn=rp;
}//cierra el constructor 
void punto(){
   fill(0);
   circle(xn,yn,rn);
   if (x<695 && x>675 && y>=197 &&y<=217){
   fill(#FF0000);
   circle(xn,yn,rn); 
   preguntar=true;
   }else {preguntar=false;}
   newton.setFrameSequence(0,4,0.1);
   pushMatrix();
   translate(xn,yn);
   scale(0.3);
   newton.draw();
   popMatrix();
}//cierra el move 

void preguntas(){
  boolean rta1=false,rta2=false ,rta3=false ,rta4=false ; int num=0;
 //----------conteo de preguntas ------------//

  if (key==' '){num=num+1;}
else if(key==' '&& num==1){num=num+1;}
else if(key==' '&& num==2){num=num+1;}
else if(key==' '&& num==3){num=num+1;}
else {}

//---------------preguntas ----------------------//  
if (preguntar){
    fill(0);
    rect(10,490,730,100);
    fill(#FFFFFF);
    textSize(25);
    //-----------preguntas texto-------------------------//
     if (num==1){
     text("Hola primiparo, veo que no sabes donde estas parado.",20,515);
     }else if (num==2){
      text("toma mi prueba y demuestra que tienes el odio nesesario",20,515);
     }else if (num==3){
     text("primera pregunta cual es la distancia al sol",20,515);}
  
  
  
  
  
  
}//if preguntar
}//void preguntar

}
