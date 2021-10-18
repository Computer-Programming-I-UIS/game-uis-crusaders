class npc{
int xn,yn,rn; boolean preguntar=false;
npc(int xp,int yp, int rp){
  xn=xp; yn=yp;rn=rp;
}//cierra el constructor 
void punto(){
//--------------------------------activar dialogo-------------------------------------------------------//
   fill(0);
   circle(xn,yn,rn);
   if (x<715 && x>666 && y>=180 &&y<=250){
   fill(#FF0000);
   circle(xn,yn,rn); 
   preguntar=true;
   }else {preguntar=false;}
//----------------------------------------------Newton---------------------------------------------------------//   
   newton.setFrameSequence(0,2,1);
   pushMatrix();
   translate(xn-35,yn);
   scale(0.13);
   newton.draw();
   popMatrix();
}//cierra el move 

void preguntas(){

 //----------conteo de preguntas ------------//

//---------------preguntas ----------------------//  

if (preguntar){
    fill(0);
    rect(10,490,730,100);
    fill(#FFFFFF);
    textSize(25);
    //-----------preguntas texto-------------------------//
     if (pre==1){
     text("Hola primiparo, veo que no sabes donde estas parado.",20,515);
     }else if (pre==2){
      text("toma mi prueba y demuestra que tienes el odio nesesario",20,515);
     }else if (pre==3){
     text("primera pregunta cual es la distancia al sol",20,515);}
  
  
  
  
  
  
}//if preguntar
}//void preguntar

}
