class npc{
int xn,yn,rn; boolean preguntar=false;
npc(int xp,int yp, int rp){
  xn=xp; yn=yp;rn=rp;
}//cierra el constructor 
//--------------------------------contador-------------------------------------------------------//
// Puntuación inicial
void punto(){
//--------------------------------activar dialogo-------------------------------------------------------//
   fill(0);
   circle(xn,yn,rn);
   if (x<715 && x>666 && y>=180 &&y<=250){
   fill(#FF0000);
   circle(xn,yn,rn);
   preguntar=true;
   }else {preguntar=false;pre=0;}
//-------------------------------------------------------------------------------------------------------//   
   newton.setFrameSequence(0,2,1);
   pushMatrix();
   translate(xn-35,yn);
   scale(0.13);
   newton.draw();
   popMatrix();
}//cierra el move 

void preguntas(){

 //----------conteo de preguntas ------------//
if (keyPressed){
  if (key==' '){pre=pre+1;} 
  else {}
}
//---------------preguntas ----------------------//  
if (preguntar){
    fill(0);
    rect(10,490,780,100);
    fill(#FFFFFF);
    fill(250);
    textSize(17.5);
    text("(Presiona espacio para continuar)",485,580);
    textSize(25);
   
    
    //-----------preguntas texto-------------------------//
     if (pre==1){
     fill(250);
     text("Hola primiparo, veo que no sabes donde estas parado.",20,515);
     textSize(17.5);
     text("(Presiona espacio para continuar)",485,580);
     }else if (pre==2){
      fill(250);
      text("toma mi prueba y demuestra que tienes el odio nesesario",20,515);
      textSize(17.5);
      text("(Presiona espacio para continuar)",485,580);
     }else if (pre==3){
     
     fill(250);
     text("primera pregunta cual es la distancia de la tierra al sol",20,515);
     fill(0);
     textSize(50); 
     text(b,10,50);
     
     fill(0);
     rect(220,265,180,70);
     fill(250);
     textSize(18);
     text("149,7 millones de Km",225,300);
     noFill();
     fill(0);
     rect(410,265,180,70);
     fill(250);
     textSize(18);
     text("20 Km",415,300);
     noFill();
     }
   else if (pre==4){
     fill(250);
     text("Segunda pregunta cual es la derivada de 2x^3",20,515);
     fill(0);
     textSize(50); 
     text(b,10,50);
     
     fill(0);
     rect(220,265,180,70);
     fill(250);
     textSize(18);
     text("1/2x^4",225,300);
     noFill();
     fill(0);
     rect(410,265,180,70);
     fill(250);
     textSize(18);
     text("6x^2",415,300);
     noFill();
     }
     else if (pre==5){
     fill(250);
     text("Tercera pregunta Que es el orden y modo de relacionar la palabras",20,515);
     fill(0);
     textSize(50); 
     text(b,10,50);
     
     fill(0);
     rect(220,265,180,70);
     fill(250);
     textSize(18);
     text("Sintaxis",225,300);
     noFill();
     fill(0);
     rect(410,265,180,70);
     fill(250);
     textSize(18);
     text("Analogia",415,300);
     noFill();
     }
     else if (pre==6){
     fill(250);
     text("Cuarta pregunta cual es la integral de 2",20,515);
     fill(0);
     textSize(50); 
     text(b,10,50);
     
     fill(0);
     rect(220,265,180,70);
     fill(250);
     textSize(18);
     text("0",225,300);
     noFill();
     fill(0);
     rect(410,265,180,70);
     fill(250);
     textSize(18);
     text("2x",415,300);
     noFill();
     }
     else if (pre==7){
     fill(250);
     text("Quinta pregunta cual es el tamaño en bits de la variable int",20,515);
     fill(0);
     textSize(50); 
     text(b,10,50);
     
     fill(0);
     rect(220,265,180,70);
     fill(250);
     textSize(18);
     text("32",225,300);
     noFill();
     fill(0);
     rect(410,265,180,70);
     fill(250);
     textSize(18);
     text("4",415,300);
     noFill();
     }
     else if (pre==8){
     fill(250);
     text("Sexta pregunta Que es una serie de ordenes ordenadas y precisas",20,515);
     fill(0);
     textSize(50); 
     text(b,10,50);
     
     fill(0);
     rect(220,265,180,70);
     fill(250);
     textSize(18);
     text("Procesador",225,300);
     noFill();
     fill(0);
     rect(410,265,180,70);
     fill(250);
     textSize(18);
     text("Algoritmo",415,300);
     noFill();
     }
     else if (pre==9){
     fill(250);
     text("Septima pregunta cual es el tamaño en bits de la variable char",20,515);
     fill(0);
     textSize(50); 
     text(b,10,50);
     
     fill(0);
     rect(220,265,180,70);
     fill(250);
     textSize(18);
     text("8",225,300);
     noFill();
     fill(0);
     rect(410,265,180,70);
     fill(250);
     textSize(18);
     text("2",415,300);
     noFill();
     }
     else if (pre==10){
     fill(250);
     text("Octava pregunta Elemento que adminidtra los recursos de un computador",20,515);
     fill(0);
     textSize(50); 
     text(b,10,50);
    
     fill(0);
     rect(220,265,180,70);
     fill(250);
     textSize(18);
     text("Memoria ROM",225,300);
     noFill();
     fill(0);
     rect(410,265,180,70);
     fill(250);
     textSize(18);
     text("Procesador",415,300);
     noFill();
     }
     else if (pre==11){
     fill(250);
     text("Novena pregunta que significa Passport en español",20,515);
     fill(0);
     textSize(50); 
     text(b,10,50);
    
     fill(0);
     rect(220,265,180,70);
     fill(250);
     textSize(18);
     text("Pasaporte",225,300);
     noFill();
     fill(0);
     rect(410,265,180,70);
     fill(250);
     textSize(18);
     text("Palanca",415,300);
     noFill();
     }else if (pre==12){
     fill(250);
     text("Decima pregunta nombre de rey legendario de la mitologia celta",20,515);
     fill(0);
     textSize(50); 
     text(b,10,50);
     
     fill(0);
     rect(220,265,180,70);
     fill(250);
     textSize(18);
     text("Lancelot",225,300);
     noFill();
     fill(0);
     rect(410,265,180,70);
     fill(250);
     textSize(18);
     text("Arturo",415,300);
     noFill();
     }else if (pre==13){
     fill(250);
     text("Su puntuacion es de ",20,515);
     text(b,240,515);
     text("has conseguido el objeto legendario escuadra",270,515);
     fill(0);
     textSize(50); 
     text(b,10,50);
   }else if (pre==14){
     fill(250);
     text("Ahora largate de mis dominios",20,515);
   }
}

  
}//if preguntar
}//void preguntar
